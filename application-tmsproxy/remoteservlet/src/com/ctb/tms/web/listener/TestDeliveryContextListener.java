package com.ctb.tms.web.listener;

import java.sql.Connection;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

import javax.servlet.ServletContextEvent;

import org.apache.log4j.Logger;

import com.ctb.tms.bean.login.Manifest;
import com.ctb.tms.bean.login.RosterData;
import com.ctb.tms.bean.login.StudentCredentials;
import com.ctb.tms.nosql.NoSQLStorageFactory;
import com.ctb.tms.nosql.OASNoSQLSink;
import com.ctb.tms.nosql.OASNoSQLSource;
import com.ctb.tms.rdb.OASRDBSink;
import com.ctb.tms.rdb.OASRDBSource;
import com.ctb.tms.rdb.RDBStorageFactory;
import com.ctb.tms.util.JMSUtils;

public class TestDeliveryContextListener implements javax.servlet.ServletContextListener {
	
	private static int checkFrequency = 30;
	private static int postFrequency = 5;
	private static RosterThread rosterThread;
	private static ScoringThread scoringThread;
	private static ConcurrentHashMap rosterMap;
	private static ConcurrentLinkedQueue<ScoringMessage> rosterQueue;
	static Logger logger = Logger.getLogger(TestDeliveryContextListener.class);
	
	OASRDBSource oasDBSource = RDBStorageFactory.getOASSource();
	OASRDBSink oasDBSink = RDBStorageFactory.getOASSink();

	public static class ScoringMessage {
		private long timestamp;
		private String testRosterId;
		
		public ScoringMessage(long timestamp, String testRosterId) {
			this.timestamp = timestamp;
			this.testRosterId = testRosterId;
		}
		
		public long getTimestamp() {
			return timestamp;
		}
		public void setTimestamp(long timestamp) {
			this.timestamp = timestamp;
		}
		public String getTestRosterId() {
			return testRosterId;
		}
		public void setTestRosterId(String testRosterId) {
			this.testRosterId = testRosterId;
		}
	}
	
	public static void enqueueRoster(ScoringMessage message) {
		rosterQueue.add(message);
	}
	
	public void contextDestroyed(ServletContextEvent sce) {
		oasDBSource.shutdown();
		oasDBSink.shutdown();
		TestDeliveryContextListener.rosterThread.stop();
		TestDeliveryContextListener.scoringThread.stop();
	}
    
	public void contextInitialized(ServletContextEvent sce) {
		logger.info("*****  Context Listener Startup");
		try {
			OASNoSQLSource oasSource = NoSQLStorageFactory.getOASSource();
			OASNoSQLSink oasSink = NoSQLStorageFactory.getOASSink();
			
			logger.info("*****  Starting active roster check background thread . . .");
			TestDeliveryContextListener.rosterMap = new ConcurrentHashMap(10000);
			TestDeliveryContextListener.rosterThread = new RosterThread(oasSource, oasSink, oasDBSource, oasDBSink);
			TestDeliveryContextListener.rosterThread.start();
			logger.info(" started.");
			
			logger.info("*****  Starting scoring queue thread . . .");
			TestDeliveryContextListener.rosterQueue = new ConcurrentLinkedQueue<ScoringMessage>();
			TestDeliveryContextListener.scoringThread = new ScoringThread();
			TestDeliveryContextListener.scoringThread.start();
			logger.info(" started.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private class RosterThread extends Thread {
		
		OASNoSQLSource oasSource;
		OASNoSQLSink oasSink;
		
		OASRDBSource oasDBSource;
		OASRDBSink oasDBSink;
		
		public RosterThread(OASNoSQLSource oasSource, OASNoSQLSink oasSink, OASRDBSource oasDBSource, OASRDBSink oasDBSink) {	
			this.oasSource = oasSource;
			this.oasSink = oasSink;
			
			this.oasDBSource = oasDBSource;
			this.oasDBSink = oasDBSink;
		}
		
		public synchronized void run() {
			while (true) {
				try {
					Looper looper = new Looper();
					looper.doLoop(oasSource, oasSink, oasDBSource, oasDBSink);
					looper = null;
				} finally {
					try {
						logger.info("*****  Completed active roster check. Sleeping for " + checkFrequency + " seconds.");
						Thread.sleep(TestDeliveryContextListener.checkFrequency * 1000);
					}catch (Exception ie) {
						// do nothing
					}
				}
			}
		}
		
		private class Looper {
			private void doLoop (OASNoSQLSource oasSource, OASNoSQLSink oasSink, OASRDBSource oasDBSource, OASRDBSink oasDBSink) {
				StudentCredentials[] creds = null;
				Connection conn = null;
				//Connection sinkConn = null;
				try {
					conn = oasDBSource.getOASConnection();
					creds = oasDBSource.getActiveRosters(conn);
					/*if("true".equals(RDBStorageFactory.copytosink)) {
						sinkConn = oasDBSink.getOASConnection();
						oasDBSink.putActiveRosters(sinkConn, creds);
						sinkConn.commit();
						sinkConn.close();
					} */
					HashMap<String, String> tasModMap = new HashMap<String, String>(128);
					for(int i=0;i<creds.length;i++) {	
						String key = creds[i].getUsername() + ":" + creds[i].getPassword() + ":" + creds[i].getAccesscode();
						try {
							String tasKey = tasModMap.get(creds[i].getTestRosterId());
							String mapKey = (String)rosterMap.get(key);
							if(mapKey == null || !creds[i].isTmsUpdate()) {
								System.out.print(".");
								if (mapKey != null && !creds[i].isTmsUpdate()) {
									// re-load cache directly from DB - roster was changed outside of TMS
									logger.warn("*****  Manifest changed for " + key + ", removing old manifest data from cache");
									if(tasKey == null) {
										String testRosterId = "" + creds[i].getTestRosterId();
										//oasSink.deleteAllItemResponses(testRosterId);
										oasSink.deleteAllManifests(testRosterId);
										tasModMap.put(testRosterId, testRosterId);
									}
									oasSink.deleteRosterData(creds[i]);
								}
								oasSource.getRosterData(creds[i]);
								Manifest manifest = oasSource.getManifest(creds[i].getTestRosterId(), creds[i].getAccesscode());
								oasSink.putManifest(creds[i].getTestRosterId(), creds[i].getAccesscode(), manifest);
								rosterMap.put(key, key);
							} else {
								logger.debug("*****  Roster data for " + key + " already present.\n");
							}
							//Thread.sleep(10);
						} catch (Exception e) {
							logger.warn("Caught Exception during active roster check. Couldn't update cache for roster: " + key, e);
							e.printStackTrace();
						}
					}
				} catch (Exception e) {
					logger.error("Caught Exception during active roster check.", e);
					e.printStackTrace();
				} finally {
					creds = null;
					try {
						if(conn != null) {
							conn.close();
						}
						conn = null;
						/*if(sinkConn != null) {
							sinkConn.close();
						} */
					}catch (Exception ie) {
						// do nothing
					}
				}
			}
		}
	}
	
	private static class ScoringThread extends Thread {
		public ScoringThread() {	
		}
		
		public void run() {
			ScoringMessage message = null;
			while (true) {
				try {
					while(!rosterQueue.isEmpty()) {
						message = rosterQueue.peek();
						if(message != null && (System.currentTimeMillis() - message.timestamp) > 60000 ) {
							message = rosterQueue.poll();
							JMSUtils.sendMessage(Integer.valueOf(message.getTestRosterId()));
							logger.debug("*****  Sent scoring message for roster " + message.getTestRosterId());
						} else {
							Thread.sleep(1000);
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						Thread.sleep(1000);
					}catch (Exception ie) {
						// do nothing
					}
				}
			}
		}
	}
}

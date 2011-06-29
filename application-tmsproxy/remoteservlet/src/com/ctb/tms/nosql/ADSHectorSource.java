package com.ctb.tms.nosql;

import java.io.IOException;

import sun.misc.BASE64Decoder;

import me.prettyprint.cassandra.service.CassandraHostConfigurator;
import me.prettyprint.hector.api.Cluster;
import me.prettyprint.hector.api.Keyspace;
import me.prettyprint.hector.api.beans.HColumn;
import me.prettyprint.hector.api.factory.HFactory;
import me.prettyprint.hector.api.query.ColumnQuery;
import me.prettyprint.hector.api.query.QueryResult;

import com.bea.xml.XmlException;

public class ADSHectorSource {
	
	private static Cluster cluster;
	
	{
		CassandraHostConfigurator chc = new CassandraHostConfigurator("localhost:9160");
		chc.setRetryDownedHostsDelayInSeconds(10);
		cluster = HFactory.getOrCreateCluster("OASCluster", chc);
	}
	
	public static String getSubtest(int itemSetId, String hash) throws XmlException, IOException, ClassNotFoundException {
		String result = null;
		Keyspace keyspace = HFactory.createKeyspace("ADS", cluster);
		String key = itemSetId + ":" + hash;
		ColumnQuery<String, String, String> columnQuery = HFactory.createStringColumnQuery(keyspace);
		columnQuery.setColumnFamily("Subtests").setKey(key).setName("subtestXML");
		QueryResult<HColumn<String, String>> qr = columnQuery.execute();
		if(qr != null && qr.get() != null) {
			result = qr.get().getValue();
		} else {
			System.out.println("*****  getSubtest: no subtest data found for " + key);
		}
		//byte [] bytes = new BASE64Decoder().decodeBuffer(result);
		//result = new String(bytes);
		return result;
	}
	
	public static String getItem(int itemId, String hash) throws XmlException, IOException, ClassNotFoundException {
		String result = null;
		Keyspace keyspace = HFactory.createKeyspace("ADS", cluster);
		String key = itemId + ":" + hash;
		ColumnQuery<String, String, String> columnQuery = HFactory.createStringColumnQuery(keyspace);
		columnQuery.setColumnFamily("Items").setKey(key).setName("itemXML");
		QueryResult<HColumn<String, String>> qr = columnQuery.execute();
		if(qr != null && qr.get() != null) {
			result = qr.get().getValue();
		} else {
			System.out.println("*****  getItem: no item data found for " + key);
		}
		//byte [] bytes = new BASE64Decoder().decodeBuffer(result);
		//result = new String(bytes);
		return result;
	}

}

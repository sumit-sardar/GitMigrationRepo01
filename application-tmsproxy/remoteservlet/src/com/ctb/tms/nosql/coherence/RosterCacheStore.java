package com.ctb.tms.nosql.coherence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import com.ctb.tms.bean.login.ReplicationObject;
import com.ctb.tms.bean.login.RosterData;
import com.ctb.tms.bean.login.StudentCredentials;
import com.ctb.tms.rdb.OASRDBSource;
import com.ctb.tms.rdb.RDBStorageFactory;
import com.ctb.tms.web.listener.TestDeliveryContextListener;
import com.tangosol.util.BinaryEntry;

public class RosterCacheStore implements OASCacheStore {
	
	public RosterCacheStore(String cacheName) {
		this();
	}

	public RosterCacheStore() {
		super();
	}

	// ----- CacheStore Interface -----

    public Object load(Object oKey) {
    	Connection conn = null;
    	RosterData result = null;
    	try {
	    	OASRDBSource source = RDBStorageFactory.getOASSource();
	    	conn = source.getOASConnection();
	    	RosterData rosterData = source.getRosterData(conn, (String) oKey);
	    	/*ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ObjectOutputStream oos = new ObjectOutputStream(baos);
			oos.writeObject(rosterData);
			byte [] bytes = baos.toByteArray();
			result = new BASE64Encoder().encode(bytes);*/
	    	result = rosterData;
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		try {
    			if(conn != null) conn.close();
    		} catch (SQLException sqe) {
    			// do nothing
    		}
    	}
    	return result;
    }

    public void store(Object oKey, Object oValue) {
    	// do nothing, roster data is read-only
    }
    
    public void store(BinaryEntry entry) {
    	// do nothing, roster data is read-only
    }

    public void erase(Object oKey) {
    	// do nothing, roster data is read-only
    }

	public void eraseAll(Collection colKeys) {
		// do nothing, roster data is read-only
	}
	
	public void eraseAll(java.util.Set<BinaryEntry> setBinEntries) {
		Iterator it = setBinEntries.iterator();
		while(it.hasNext()) {
			BinaryEntry entry = (BinaryEntry) it.next();
			ReplicationObject value = (ReplicationObject) entry.getValue();
			//if(!value.isReplicate().booleanValue()) {
				it.remove();
			//}
		}
	}

	public Map loadAll(Collection colKeys) {
		Connection conn = null;
    	Map result = new HashMap(colKeys.size());
    	try {
    		Iterator it = colKeys.iterator();
    		OASRDBSource source = RDBStorageFactory.getOASSource();
	    	conn = source.getOASConnection();
    		while(it.hasNext()) {
    			Object key = it.next();
		    	RosterData rosterData = source.getRosterData(conn, (String) key);
		    	/*ByteArrayOutputStream baos = new ByteArrayOutputStream();
				ObjectOutputStream oos = new ObjectOutputStream(baos);
				oos.writeObject(rosterData);
				byte [] bytes = baos.toByteArray();
				String value = new BASE64Encoder().encode(bytes);*/
		    	result.put(key, rosterData);
    		}
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		try {
    			if(conn != null) conn.close();
    		} catch (SQLException sqe) {
    			// do nothing
    		}
    	}
    	return result;
	}

	public void storeAll(Map mapEntries) {
		// do nothing, roster data is read-only
	}

    public Iterator keys() {
    	return null;
    }

	public void storeAll(Set setBinEntries) {
		// do nothing, roster data is read-only
	}
}

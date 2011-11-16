package com.ctb.tms.nosql.coherence.push;

import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.ctb.tms.bean.login.Manifest;
import com.ctb.tms.bean.login.ManifestData;
import com.ctb.tms.bean.login.RosterData;
import com.oracle.coherence.patterns.pushreplication.EntryOperation;
import com.oracle.coherence.patterns.pushreplication.publishers.cache.ConflictResolution;
import com.oracle.coherence.patterns.pushreplication.publishers.cache.ConflictResolver;
import com.tangosol.util.BinaryEntry;

public class TMSConflictResolver implements ConflictResolver {

	static Logger logger = Logger.getLogger(TMSConflictResolver.class);
	
	public TMSConflictResolver() {
    }

    public ConflictResolution resolve(EntryOperation entryOperation, BinaryEntry localEntry) {
        ConflictResolution resolution = new ConflictResolution();

        if (!(localEntry.isPresent())) {
            switch (entryOperation.getOperation())
            {
                case Delete:
                    resolution.useLocalValue();
                    break;
                case Insert:
                	resolution.useInComingValue();
                    break;
                case Update:
                	resolution.useInComingValue();
                    break;
            }
        }
        else {
            switch (entryOperation.getOperation())
            {
                case Delete:
                    resolution.remove();
                    break;
                case Insert:
                case Update:
                {
                	if("OASRosterCache".equals(entryOperation.getCacheName())) {
                		RosterData incoming = (RosterData) localEntry.getContext().getValueFromInternalConverter().convert(entryOperation.getPublishableEntry().getBinaryValue());
                		RosterData current = (RosterData) localEntry.getValue();
                		if(incoming.getAuthData().getLastMseq() > current.getAuthData().getLastMseq()) {
                			resolution.useInComingValue();
                		} else {
                			resolution.useLocalValue();
                			logger.warn("Replicated roster message has lower mseq than current local value - ignoring.");
                		}
                	} else if("OASManifestCache".equals(entryOperation.getCacheName())) {
                		Manifest[] incoming = (Manifest[]) localEntry.getContext().getValueFromInternalConverter().convert(entryOperation.getPublishableEntry().getBinaryValue());
                		Manifest[] local = (Manifest[]) localEntry.getValue();
                		ArrayList<Manifest> merged = new ArrayList<Manifest>(); 
                		for(int i=0;i<incoming.length;i++) {
                			boolean foundSU = false;
                			for(int j=0;j<local.length;j++) {
                				if(local[j].getAccessCode().equals(incoming[i].getAccessCode())) {
                					// found SU
                					foundSU = true;
                					Manifest newManifest = local[j];
                					if(incoming[i].getRosterLastMseq() > local[j].getRosterLastMseq()) {
                						// using incoming roster-level values
                						newManifest = incoming[i];
                					}
                					ManifestData[] inData = incoming[i].getManifest();
                					ManifestData[] locData = local[j].getManifest();
                					ArrayList<ManifestData> newData = new ArrayList<ManifestData>();
                					for(int k=0;k<inData.length;k++) {
                						boolean foundDU = false;
                						for(int m=0;m<locData.length;m++) {
                							if(locData[m].getId() == inData[k].getId()) {
                								// found DU
                								foundDU = true;
                								ManifestData newer = locData[m];
                								if(inData[k].getSubtestLastMseq() > locData[m].getSubtestLastMseq()) {
                									// using incoming subtest-level values
                									newer = inData[k];
                								}
                								newData.add(newer);
                								break;
                							}
                						}
                						if(!foundDU) {
                							// all-new DU incoming
                							//newData.add(inData[k]);
                							// don't add new subtests, they should be same or removed
                						}
                					}
                					newManifest.setManifest((ManifestData[])newData.toArray(new ManifestData[0]));
                					if("TRUE".equals(incoming[i].getTutorialTaken()) || "TRUE".equals(local[j].getTutorialTaken())) {
                						newManifest.setTutorialTaken("TRUE");
                					}
                					merged.add(newManifest);
                					break;
                				}
                			}
            				if(!foundSU) {
            					// all-new SU incoming
            					merged.add(incoming[i]);
            				}
                		}
                		Manifest[] finalMerged = (Manifest[])merged.toArray(new Manifest[0]);
                		logger.info("Merged manifest after replication: ");
                		for(int n=0;n<finalMerged.length;n++) {
                			logger.info(finalMerged[n].toString());
                		}
                		resolution.useMergedValue(finalMerged);
                	} else {
                		resolution.useInComingValue();
                	}
                    break;
                }
            }
        }
        return resolution;
    }
}

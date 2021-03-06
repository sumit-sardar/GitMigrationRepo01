package com.ctb.contentBridge.core.publish.mapping;


import java.io.*;
import java.util.*;

import org.apache.log4j.*;

import com.ctb.contentBridge.core.exception.BusinessException;

public class ObjectivesLoader {

    private BufferedReader reader;
    private ObjectiveBuilder builder;
	private static Logger logger = Logger.getLogger(ObjectivesLoader.class);

    public ObjectivesLoader(ObjectiveBuilder builder, Reader reader) {
        this.reader = new BufferedReader(reader);
        this.builder = builder;
    }

    public void load(Objectives objectives) {
        try {
            String line = null;
            int lineNumber = 0;
            while ((line = reader.readLine()) != null) {
                lineNumber += 1;
                if (line.trim().length() > 0) {
                    objectives.add(builder.buildFromLine(line,
                            objectives.getFrameworkInfo().getLevelNames(),lineNumber));
                }
            }
            reader.close();
        } catch (IOException ioEx) {
            throw new BusinessException("Unexpected error reading objectives file");
        }
        validate(objectives);
    }

    private void validate(Objectives objectives) {
        Collection badObjectives = objectives.getObjectivesWithDubiousLevel();
        Collection orphanedObjectives = objectives.getObjectivesWithoutValidParent();

        if (!badObjectives.isEmpty()) {
            String s = "The following objectives do not have correct level numbers: ";
            for (Iterator iter = badObjectives.iterator(); iter.hasNext();) {
                s += "\nObjective: " + (String) iter.next();
           }
           logger.error(s);
           System.out.println(s);
        }
        if (!orphanedObjectives.isEmpty()) {
			String s = "The following objectives are not properly linked to a parent objective: ";
            for (Iterator iter = badObjectives.iterator(); iter.hasNext();) {
                s = "\nObjective: " + (String) iter.next();
            }
            logger.error(s);
            System.out.println(s);
        }
        if (!badObjectives.isEmpty() || !orphanedObjectives.isEmpty()) {
            throw new BusinessException("Error in objectives file");
        }
    }
}

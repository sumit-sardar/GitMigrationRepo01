package com.ctb.contentBridge.core.publish.sax.util;


import java.io.*;

import com.ctb.contentBridge.core.exception.SystemException;
import com.ctb.contentBridge.core.publish.tools.IOUtils;




/**
 * Created by IntelliJ IDEA.
 * User: mwshort
 * Date: Jul 31, 2003
 * Time: 3:29:18 PM
 * To change this template use Options | File Templates.
 */
public class AnswerKeyXSLDocument extends XSLDocType {

    private static AnswerKeyXSLDocument instance = null;
    public static final String KEY_NAME = "ANSWER_KEY";

    private AnswerKeyXSLDocument(byte[] bytes) {
        super(KEY_NAME, bytes);
    }

    public static AnswerKeyXSLDocument instance() {

        if (instance != null) {
            return instance;
        }
        try {
			loadInstance();
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return instance;
    }

    private static synchronized void loadInstance() throws SystemException {
        try {
            File xslFile = new File(ANSWERKEY_STYLESHEET);
            byte[] bytes = IOUtils.loadBytes(xslFile);

            instance = new AnswerKeyXSLDocument(bytes);
        } catch (IOException e) {
            e.printStackTrace();  // To change body of catch statement use Options | File Templates.
            throw new SystemException("Could not load XSL-T for Answer Key to Items");
        }
    }
}

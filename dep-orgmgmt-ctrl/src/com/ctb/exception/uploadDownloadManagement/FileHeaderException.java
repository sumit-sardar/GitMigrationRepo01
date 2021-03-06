package com.ctb.exception.uploadDownloadManagement; 

import com.ctb.exception.CTBBusinessException;

/** 
 * FileHeaderException.java
 * Exception thrown when user data corresponding to request
 * parameters can not be obtained from the data store
 * 
 * @author Tata Consultancy Services
 */

public class FileHeaderException extends CTBBusinessException { 
     static final long serialVersionUID = 1L;
	/**
	 * Construct a new exception
	 * @param message
	 */
    public FileHeaderException(String message) {
        super(message);
    }
} 

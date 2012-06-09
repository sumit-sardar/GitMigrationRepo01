package com.ctb.exception.testAdmin; 

import com.ctb.exception.CTBBusinessException;

/**
 * Exception thrown when student data corresponding to request
 * parameters can not be obtained from the data store
 * 
 * @author Nate_Cohen
 */
public class StudentDataNotFoundException extends CTBBusinessException
{
    static final long serialVersionUID = 1L;
	/**
	 * Construct a new exception
	 * @param message
	 */
    public StudentDataNotFoundException(String message) {
        super(message);
    }
} 

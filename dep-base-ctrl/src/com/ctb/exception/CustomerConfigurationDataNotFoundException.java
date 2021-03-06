package com.ctb.exception; 

import com.ctb.exception.CTBBusinessException;

/**
 * Exception thrown when customer configuration data corresponding to request
 * parameters can not be obtained from the data store
 * 
 * @author TCS
 */
public class CustomerConfigurationDataNotFoundException extends CTBBusinessException
{
    static final long serialVersionUID = 1L;
	/**
	 * Construct a new exception
	 * @param message
	 */
    public CustomerConfigurationDataNotFoundException(String message) {
        super(message);
    }
} 
package com.ctb.cprocessor.decorator;


import com.ctb.common.tools.SystemException;


import java.sql.Connection;
import java.sql.SQLException;

/**
 * User: mwshort
 * Date: Dec 3, 2003
 * Time: 10:40:52 AM
 * 
 *
 */
abstract public class AbstractTransactionDecorator {
    final Connection connection;

    protected AbstractTransactionDecorator(Connection connection) {
        this.connection = connection;
    }

    protected void commit() {
        try {
            connection.commit();
        } catch (SQLException e) {
            throw new SystemException(e.getMessage(),e);
        }
    }

    protected void rollback() {
        try {
            connection.rollback();
        } catch (SQLException sqle) {
            //todo - mws - LOG THE ORIGINAL EXCEPTION
            throw new SystemException(sqle.getMessage(),sqle);
        }
    }
    protected void rollback(Exception e) {
        rollback();
        handleException(e);
    }

    private void handleException(Exception e) {
        if (e instanceof SystemException)
            throw (SystemException) e;
        throw new SystemException(e.getMessage(),e);
    }

}

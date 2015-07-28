package com.mhe.ctb.oas.BMTSync.spring;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mhe.ctb.oas.BMTSync.exception.ServerException;

/**
 * Spring configuration in Java format. Specifically used to create a data source for DAOs that can depend on test versus QA/Prod.
 * @author kristy_tracer
 */
@Configuration
public class DataSourceConfiguration {

    private static final Logger logger = Logger.getLogger(DataSourceConfiguration.class);
    
    /**
     * DataSource bean, returns a direct connection if on desktop, or a Weblogic connection if on QA/Prod.
     * @return DataSource representing a connection to the database.
     * @throws ServerException If anything goes wrong, blocking starting.
     */
	@Bean
	public DataSource oasBmtSyncDataSource() throws ServerException {
        final String query = "select 1 from dual";
        Context envContext;
        JdbcTemplate jdbcTemplate;
        
        try {
        	// Try Weblogic JNDI context
        	envContext = new InitialContext();
            final DataSource weblogicDS = (DataSource)envContext.lookup("oasDataSource");
            jdbcTemplate = new JdbcTemplate(weblogicDS);
            jdbcTemplate.queryForObject(query, Integer.class);
            logger.info("[DataSource] Using Weblogic JNDI syntax");
            return weblogicDS;
        } catch (Exception e) {
            logger.info("[DataSource] Couldn't lookup oasBmtSyncDataSource or execute test SQL using Weblogic JNDI syntax: " + e.getMessage());
        }
     
        // Default to direct database access, only used for desktop testing.
        BasicDataSource remoteDS = new BasicDataSource();
        remoteDS.setDriverClassName("oracle.jdbc.OracleDriver");
        remoteDS.setUrl("jdbc:oracle:thin:@//nj09mhe0394-vip.mhe.mhc:1521/OASR5T");
        remoteDS.setUsername("oas");
        remoteDS.setPassword("qoasr5");
        logger.info("[DataSource] Using direct database access via JDBC driver.");
        return remoteDS;
	}
}
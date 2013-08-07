package com.ctb.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;
import javax.sql.DataSource;

public class SqlUtil {

	private static String oasDtataSourceJndiName= "oasDataSource";
	private static String irsDtataSourceJndiName= "irsDataSource";

	public static Connection openOASDBcon() throws Exception {
		Connection conn = null;
		try {
			DataSource ds = ServiceLocator.locateDataSource(oasDtataSourceJndiName);
			conn = ds.getConnection();
		} catch (NamingException e) {
			System.err.println("NamingException:"+ "JNDI name does not found.");
			e.printStackTrace();
			throw new Exception("NamingException:"+ "JNDI name does not found.");
		} catch (SQLException e) {
			System.err.println("SQLException:"+ "while getting connection.");
			e.printStackTrace();
			throw new Exception("NamingException:"+ "while getting connection.");
		}
		
		return conn;
		
	}

	public static Connection openIRSDBcon() throws Exception {
		Connection conn = null;
		try {
			DataSource ds = ServiceLocator.locateDataSource(irsDtataSourceJndiName);
			conn = ds.getConnection();
		} catch (NamingException e) {
			System.err.println("NamingException:"+ "JNDI name does not found.");
			e.printStackTrace();
			throw new Exception("NamingException:"+ "JNDI name does not found.");
		} catch (SQLException e) {
			System.err.println("SQLException:"+ "while getting connection.");
			e.printStackTrace();
			throw new Exception("NamingException:"+ "while getting connection.");
		}
		
		return conn;
	}

	
	public static Connection openOASDBconnectionForResearch() {
		String dbip = ExtractUtil.getDetail("oas.db.host.address").trim();
		String sid = ExtractUtil.getDetail("oas.db.sid.address").trim();
		String user = ExtractUtil.getDetail("oas.db.user.name").trim();
		String password = ExtractUtil.getDetail("oas.db.user.password").trim();
		
		String connURL = "jdbc:oracle:thin:@" + dbip + ":1521:"	+ sid;

		Connection conn = null;

		try {

			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			conn = DriverManager.getConnection(connURL, user, password);
			conn.setAutoCommit(false);

		} catch (SQLException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();

		}

		return conn;
	}

	public static Connection openIRSDBconnectionForResearch() {
		
		String dbip = ExtractUtil.getDetail("irs.db.host.address").trim();
		String sid = ExtractUtil.getDetail("irs.db.sid.address").trim();
		String user = ExtractUtil.getDetail("irs.db.user.name").trim();
		String password = ExtractUtil.getDetail("irs.db.user.password").trim();
		
		String connURL = "jdbc:oracle:thin:@" + dbip + ":1521:" + sid;

		Connection conn = null;

		try {

			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			conn = DriverManager.getConnection(connURL, user, password);
			conn.setAutoCommit(false);

		} catch (SQLException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();

		}

		return conn;
	}

	public static void close(Connection con) {
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// do nothing
			}
		}

	}

	public static void close(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// do nothing
			}
		}

	}

	public static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// do nothing
			}
		}

	}

	public static void close(Statement st, ResultSet rs) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// do nothing
			}
		}

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// do nothing
			}
		}

	}

}

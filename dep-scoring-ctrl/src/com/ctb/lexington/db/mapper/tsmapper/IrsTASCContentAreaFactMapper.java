package com.ctb.lexington.db.mapper.tsmapper;

import java.sql.Connection;
import java.sql.SQLException;

import com.ctb.lexington.db.irsdata.irstsdata.IrsTASCContentAreaFactData;
import com.ctb.lexington.db.mapper.AbstractDBMapper;
import com.ibatis.sqlmap.client.SqlMapClient;

/**
 * @author Dipak Dutta (381623)
 *
 */

public class IrsTASCContentAreaFactMapper extends AbstractDBMapper{
	
	private static final String FIND_BY_CA_STUDENT_SESSION = "TSfindByCAStudentSession";
	private static final String INSERT_INTO_CONTENTAREAFACT = "TSinsertTASCContentAreaFact";
	private static final String UPDATE_CONTENTAREAFACT = "TSupdateTASCContentAreaFact";
	private static final String DELETE_BY_CONTENTAREAFACTID = "TSdeleteByContentAreaFactId";
    private static final String UPDATE_CURRENTRESULT_STATUS = "TSupdateTASCContentAreaFactCurrentResult";
    
	public IrsTASCContentAreaFactMapper(Connection conn){
		super(conn);
	}
	
	public IrsTASCContentAreaFactData findByCAStudentSession(Long contentAreaId, Long studentId, Long sessionId){
		IrsTASCContentAreaFactData template = new IrsTASCContentAreaFactData();
		template.setContentAreaid(contentAreaId);
		template.setStudentid(studentId);
		template.setSessionid(sessionId);
		return (IrsTASCContentAreaFactData) find(FIND_BY_CA_STUDENT_SESSION,template);    
    }
    
    public Long isTASCCAFactCurrent(IrsTASCContentAreaFactData fact) {
        return ((IrsTASCContentAreaFactData) find("TSisTASCCAFactCurrent", fact)).getCurrentResultid();
    }
	
	public void insert(IrsTASCContentAreaFactData record)throws SQLException{
		insert(INSERT_INTO_CONTENTAREAFACT, record);
    }	
	
	public void update(IrsTASCContentAreaFactData record)throws SQLException{
        update(UPDATE_CONTENTAREAFACT, record);
    }
    
    public void updateCurrentResultStatus(IrsTASCContentAreaFactData record)throws SQLException {
        update(UPDATE_CURRENTRESULT_STATUS, record);
    }
    
	public void delete(IrsTASCContentAreaFactData record)throws SQLException{
		if(record != null)
			delete(DELETE_BY_CONTENTAREAFACTID, record);
    }
	
	public SqlMapClient insertBatch(IrsTASCContentAreaFactData record, SqlMapClient sqlMap)throws SQLException{
		sqlMap = insertBatch(INSERT_INTO_CONTENTAREAFACT, record, sqlMap);
		return sqlMap;
    }

	public SqlMapClient deleteBatch(IrsTASCContentAreaFactData record, SqlMapClient sqlMap)throws SQLException{
		if(record != null)
			sqlMap = deleteBatch(DELETE_BY_CONTENTAREAFACTID, record, sqlMap);
		return sqlMap;
    }
	
	public void executeItemBatch(SqlMapClient sqlClient) throws SQLException{
		executeBatchProcess(sqlClient);
	}
}
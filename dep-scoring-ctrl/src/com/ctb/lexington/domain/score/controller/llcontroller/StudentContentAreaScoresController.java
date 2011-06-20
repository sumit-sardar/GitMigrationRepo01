package com.ctb.lexington.domain.score.controller.llcontroller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.ctb.lexington.db.data.AdminData;
import com.ctb.lexington.db.data.ContextData;
import com.ctb.lexington.db.data.CurriculumData;
import com.ctb.lexington.db.data.StsTestResultFactData;
import com.ctb.lexington.db.data.StsTestResultFactDetails;
import com.ctb.lexington.db.data.StudentSubtestScoresData;
import com.ctb.lexington.db.data.StudentSubtestScoresDetails;
import com.ctb.lexington.db.data.StudentTestData;
import com.ctb.lexington.db.data.CurriculumData.ContentArea;
import com.ctb.lexington.db.irsdata.irslldata.IrsLLContentAreaFactData;
import com.ctb.lexington.db.irsdata.irstvdata.IrsTVContentAreaFactData;
import com.ctb.lexington.db.mapper.llmapper.IrsLLContentAreaFactMapper;

public class StudentContentAreaScoresController {
    private StudentSubtestScoresData subtestData;
    private StsTestResultFactData factData;
    private CurriculumData currData;
    private StudentTestData testData;
    private AdminData adminData;
    private ContextData context;
    private IrsLLContentAreaFactMapper mapper;

    public StudentContentAreaScoresController(Connection conn, StudentSubtestScoresData subtestData, StsTestResultFactData factData, CurriculumData currData, StudentTestData testData, AdminData adminData, ContextData context) {
        this.subtestData = subtestData;
        this.factData = factData;
        this.currData = currData;
        this.testData = testData;
        this.adminData = adminData;
        this.context = context;
        mapper = new IrsLLContentAreaFactMapper(conn);
    }

    public void run() throws SQLException {
        IrsLLContentAreaFactData [] facts = getContentAreaFactBeans();
        for(int i=0;i<facts.length;i++) {
        	IrsLLContentAreaFactData newFact = facts[i];
            mapper.delete(newFact);
            if(new Long(1).equals(context.getCurrentResultId()))  {
                System.out.println("LLCAFact record currency: " + mapper.isLLCAFactCurrent(newFact));
                mapper.insert(newFact);
            }
        }
    }
    
    public IrsLLContentAreaFactData [] getContentAreaFactBeans() {
        ContentArea [] contentAreas = currData.getContentAreas();
        ArrayList facts = new ArrayList();
            for(int i=0;i<contentAreas.length;i++) {
               StsTestResultFactDetails fact = factData.get(contentAreas[i].getContentAreaName());
               if(fact != null /*&&
                    ("T".equals(fact.getValidScore()) || "Y".equals(fact.getValidScore()))*/) {
                   StudentSubtestScoresDetails subtest = subtestData.get(contentAreas[i].getSubtestId());
                   IrsLLContentAreaFactData newFact = new IrsLLContentAreaFactData();
                   newFact.setAssessmentid(context.getAssessmentId());
                   newFact.setContentAreaid(contentAreas[i].getContentAreaId());
                   newFact.setCurrentResultid(context.getCurrentResultId());
                   newFact.setFormid(new Long("A".equals(currData.getContentAreas()[0].getSubtestForm())?7:
                       "B".equals(currData.getContentAreas()[0].getSubtestForm())?8:
                           ("Espa?ol".equals(currData.getContentAreas()[0].getSubtestForm()) 
                          		 || "Espanol".equals(currData.getContentAreas()[0].getSubtestForm()) 
                          		 || "Espa�ol".equals(currData.getContentAreas()[0].getSubtestForm()))?9:10));
                   
                   newFact.setGradeid(context.getGradeId());
                   newFact.setLevelid(new Long("K".equals(currData.getContentAreas()[0].getSubtestLevel())?16:
                       "1".equals(currData.getContentAreas()[0].getSubtestLevel())?17:
                       "2-3".equals(currData.getContentAreas()[0].getSubtestLevel())?18:
                       "4-5".equals(currData.getContentAreas()[0].getSubtestLevel())?19:
                       "6-8".equals(currData.getContentAreas()[0].getSubtestLevel())?20:
                       "9-12".equals(currData.getContentAreas()[0].getSubtestLevel())?21:22));
                   newFact.setNationalPercentile((fact.getNationalPercentile()==null)?null:new Long(fact.getNationalPercentile().longValue()));
                   newFact.setNormalCurveEquivalent((fact.getNormalCurveEquivalent()==null)?null:new Long(fact.getNormalCurveEquivalent().longValue()));
                   newFact.setOrgNodeid(context.getOrgNodeId());
                   newFact.setPercentageMastery((fact.getPercentObjectiveMastery()==null)?null:fact.getPercentObjectiveMastery());
                   newFact.setPercentObtained(fact.getPercentObtained());
                   newFact.setPointsAttempted(fact.getPointsAttempted());
                   newFact.setPointsObtained(fact.getPointsObtained());
                   newFact.setPointsPossible(fact.getPointsPossible());
                   newFact.setProgramid(context.getProgramId());
                   newFact.setScaleScore((fact.getScaleScore()==null)?null:new Long(fact.getScaleScore().longValue()));
                   newFact.setProficencyLevel((fact.getPerformanceLevelCode()==null)?null:new Long(fact.getPerformanceLevelCode()));
                   newFact.setSessionid(context.getSessionId());
                   newFact.setStudentid(context.getStudentId());
                   newFact.setSubjectid(contentAreas[i].getSubjectId());
                   newFact.setTestStartTimestamp(context.getTestStartTimestamp());
                   Timestamp subtestTime = testData.getBySubtestId(contentAreas[i].getSubtestId()).getSubtestCompletionTimestamp(adminData.getTimeZone());
                   if(subtestTime == null) subtestTime = context.getTestCompletionTimestamp();
                   newFact.setTestCompletionTimestamp(subtestTime);
                   newFact.setAttr1id(context.getDemographicData().getAttr1Id());
                   newFact.setAttr2id(context.getDemographicData().getAttr2Id());
                   newFact.setAttr3id(context.getDemographicData().getAttr3Id());
                   newFact.setAttr4id(context.getDemographicData().getAttr4Id());
                   newFact.setAttr5id(context.getDemographicData().getAttr5Id());
                   newFact.setAttr6id(context.getDemographicData().getAttr6Id());
                   newFact.setAttr7id(context.getDemographicData().getAttr7Id());
                   newFact.setAttr8id(context.getDemographicData().getAttr8Id());
                   newFact.setAttr9id(context.getDemographicData().getAttr9Id());
                   newFact.setAttr10id(context.getDemographicData().getAttr10Id());
                   newFact.setAttr11id(context.getDemographicData().getAttr11Id());
                   newFact.setAttr12id(context.getDemographicData().getAttr12Id());
                   newFact.setAttr13id(context.getDemographicData().getAttr13Id());
                   newFact.setAttr14id(context.getDemographicData().getAttr14Id());
                   newFact.setAttr15id(context.getDemographicData().getAttr15Id());
                   newFact.setAttr16id(context.getDemographicData().getAttr16Id());
                   facts.add(newFact);
               }
            }
        return (IrsLLContentAreaFactData []) facts.toArray(new IrsLLContentAreaFactData[0]);
    }
}

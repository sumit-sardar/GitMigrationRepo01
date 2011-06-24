package com.ctb.lexington.domain.score.scorer.calculator;

import java.math.BigDecimal;
import java.util.Map;

import com.ctb.lexington.db.utils.DatabaseHelper;
import com.ctb.lexington.domain.score.event.ContentAreaDerivedScoreEvent;
import com.ctb.lexington.domain.score.event.ContentAreaNumberCorrectEvent;
import com.ctb.lexington.domain.score.event.ContentAreaRawScoreEvent;
import com.ctb.lexington.domain.score.event.SubtestStartedEvent;
import com.ctb.lexington.domain.score.event.common.Channel;
import com.ctb.lexington.domain.score.scorer.Scorer;
import com.ctb.lexington.domain.teststructure.PerformanceLevel;
import com.ctb.lexington.domain.teststructure.ScoreLookupCode;
import com.ctb.lexington.util.SafeHashMap;

/**
 * @author TCS
*/
public class LasLinkContentAreaDerivedScoreCalculator extends AbstractDerivedScoreCalculator {
    private static final String LASLINK_FRAMEWORK_CODE = "LLEAB";
    public LasLinkContentAreaDerivedScoreCalculator(Channel channel, Scorer scorer) {
        super(channel, scorer);
        channel.subscribe(this, ContentAreaRawScoreEvent.class);
        channel.subscribe(this, ContentAreaNumberCorrectEvent.class);
        mustPrecede(SubtestStartedEvent.class, ContentAreaNumberCorrectEvent.class);
    }
    
    private final Map contentAreaRawScoreEvents = new SafeHashMap(String.class,
            ContentAreaRawScoreEvent.class);
    
    
    public void onEvent(ContentAreaRawScoreEvent event) {
            contentAreaRawScoreEvents.put(event.getContentAreaName(), event);
    }
    
    
    public void onEvent(ContentAreaNumberCorrectEvent event) {
    	
    	final Integer subtestId = DatabaseHelper.asInteger(event.getSubtestId());
        
         
       /*  if("K".equals(pTestLevel) || "1".equals(pTestLevel)) {
             pTestLevel = "1";
         }
         if( "2-3".equals(pTestLevel) ){  pTestLevel = "2"; }
         if( "4-5".equals(pTestLevel) ){  pTestLevel = "3"; }
         if( "6-8".equals(pTestLevel) ){  pTestLevel = "4"; }
         if( "9-12".equals(pTestLevel) ){ pTestLevel = "5"; }
         */
         if ("A".equals(pDupTestForm) || "B".equals(pDupTestForm)) { 
        	 pTestForm = pDupTestForm;
         }
         if ("Espa?ol".equals(pDupTestForm) || "Espanol".equals(pDupTestForm) || "Espa�ol".equals(pDupTestForm)) {
        	pTestForm  = "S";
         }
       
        ContentAreaRawScoreEvent contentAreaRawScoreEvent = (ContentAreaRawScoreEvent)contentAreaRawScoreEvents.get(event.getContentAreaName());
        //System.out.println("===>"+contentAreaRawScoreEvent.getPointsObtained());
        Integer pointObtained = contentAreaRawScoreEvent.getPointsObtained();
        BigDecimal obtained = new BigDecimal(pointObtained.toString());
        final BigDecimal scaleScore = getScore(
    			subtestId,
    			event.getContentAreaName(),
				null,
				pTestForm,
				pTestLevel,
				null,
				ScoreLookupCode.SUBTEST_NUMBER_CORRECT,
				obtained,
				ScoreLookupCode.SCALED_SCORE,
				null );
        
        final BigDecimal proficencyLevelValue = getLasLinkPerformanceLevel(LASLINK_FRAMEWORK_CODE, event.getContentAreaName(),
                pTestLevel, scaleScore, pGrade, pTestForm);
       final PerformanceLevel proficencyLevel = PerformanceLevel.getByCode(String
                .valueOf(proficencyLevelValue));
        
       

        channel.send(new ContentAreaDerivedScoreEvent(
                event.getTestRosterId(),
        		event.getSubtestId(), 
				event.getContentAreaId(), 
				event.getContentAreaName(), 
				scaleScore, 
				null,//standardErrorMeasurement,
				null,//normalCurveEquivalent,
				null,//gradeEquivalent,
				null,//null,
				null,//nationalStanine, 
				null,//nationalPercentile, 
				null,
				null,
				proficencyLevel,
				pNormGroup,
                pNormYear,
				pAgeCategory,
                pTestLevel,
                pRecommendedLevel));
    }
}
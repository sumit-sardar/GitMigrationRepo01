CREATE OR REPLACE PACKAGE PKG_BMTSYNC_TESTSTATUS AS
    TYPE REF_CURSOR IS REF CURSOR;
	
    /***************************************************
	*
	* Procedure to validate the Test Status Data
	* and update the Student Item Set Status table
	* with the completion Status
	***************************************************/
    PROCEDURE ValidateSaveTestStatus (
		pRosterId           IN NUMBER,
		pOasTestId          IN VARCHAR2,
		pDeliveryStatus     IN VARCHAR2,
		pStartedDate        IN VARCHAR2,
		pCompletedDate      IN VARCHAR2,
		pResultCursor       OUT REF_CURSOR); 
		
		

	/**********************************************************
	* PROCEDURE TO UPDATE THE TEST_ROSTER COMPLETION STATUS
	* BASED ON THE ROSTER SUB-TEST COMPLETION STATUS
	*
	**********************************************************/
	PROCEDURE UpdateRosterTestStatus(
	   pRosterId           IN NUMBER);

	   

END PKG_BMTSYNC_TESTSTATUS;
/




CREATE OR REPLACE PACKAGE BODY PKG_BMTSYNC_TESTSTATUS AS

    /***************************************************
	*
	* Procedure to validate the Test Status Data
	* and updates the Student Item Set Status table
	* with the completion Status
	***************************************************/

    PROCEDURE ValidateSaveTestStatus (
		pRosterId           IN NUMBER,
		pOasTestId          IN VARCHAR2,
		pDeliveryStatus     IN VARCHAR2,
		pStartedDate        IN VARCHAR2,
		pCompletedDate      IN VARCHAR2,
		pResultCursor       OUT REF_CURSOR) AS
		
		vFound         NUMBER;
		vItemSet_Id    NUMBER;
		bSuccess       CHAR(1);
		bErrorCode     NUMBER;
		bErrorMsg      VARCHAR2(200);
		vStatusDesc    Scoring_Status_Code.Scoring_Status_Desc%TYPE;
		vStartDate     DATE;
		vCompletionDate   DATE;
	BEGIN
	    bSuccess := 'T';
		vStartDate := TO_DATE(pStartedDate, 'MM-DD-YYYY HH:MI:SS PM');
		vCompletionDate := TO_DATE(pCompletedDate, 'MM-DD-YYYY HH:MI:SS PM');
		
		bErrorMsg  := 'Missing required fields';
	    IF pRosterID = NULL OR pRosterID = 0 THEN
		    bSuccess := 'F';
			bErrorCode := 104;
			bErrorMsg  := bErrorMsg||', Roster ID is mandatory';
		END IF;
		
		IF pOasTestID IS NULL OR LENGTH(TRIM(pOasTestID)) = 0 THEN
		    bSuccess := 'F';
			bErrorCode := 104;
			bErrorMsg  := bErrorMsg||', Oas Test ID is mandatory';
		END IF;

		IF pDeliveryStatus IS NULL OR LENGTH(TRIM(pDeliveryStatus)) = 0 THEN
		    bSuccess := 'F';
			bErrorCode := 104;
			bErrorMsg  := bErrorMsg||', Delivery Status is mandatory';
		END IF;

		IF pStartedDate IS NULL OR LENGTH(TRIM(pStartedDate)) = 0 THEN
		    bSuccess := 'F';
			bErrorCode := 104;
			bErrorMsg  := bErrorMsg||', Started Date is mandatory';
		END IF;
		
		IF bSuccess = 'T' THEN
		    bErrorMsg  := '';
		    --Validate Roster ID
		    BEGIN
				SELECT Test_Roster_ID INTO vFound 
				FROM Test_Roster 
				WHERE Test_Roster_ID = pRosterID;
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				bSuccess := 'F';
				bErrorCode := 102;
				bErrorMsg  := 'Roster Id does not exist in OAS';
            WHEN OTHERS THEN
				bSuccess := 'F';
				bErrorCode := 199;
				bErrorMsg  := 'Oracle Error validating Test Roster ID: '||SQLCODE||', '||SUBSTR(SQLERRM, 1, 80);
			END;
			
			-- Find the Item Set ID
			BEGIN
			    SELECT IST.Item_Set_Id INTO vItemSet_Id
				FROM Student_Item_Set_Status SISS, Item_Set IST 
				WHERE SISS.Item_Set_ID = IST.Item_set_Id AND
				   SISS.Test_Roster_ID = pRosterID AND 
				   IST.Ext_Tst_Item_Set_Id = pOasTestId;
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				bSuccess := 'F';
				bErrorCode := 105;
				bErrorMsg  := 'Roster Id - OasTest ID  does not exist in OAS';
            WHEN OTHERS THEN
				bSuccess := 'F';
				bErrorCode := 199;
				bErrorMsg  := 'Oracle Error validating Item Set Id : '||SQLCODE||', '||SUBSTR(SQLERRM, 1, 80);
			END;
			
			-- Validate the Delivery Status Code
			BEGIN
			    SELECT Scoring_Status_Desc INTO vStatusDesc
				FROM Scoring_Status_Code 
				WHERE Scoring_Status = pDeliveryStatus;
				DBMS_OUTPUT.PUT_LINE('Updated Successfully');
			EXCEPTION
			WHEN NO_DATA_FOUND THEN
				bSuccess := 'F';
				bErrorCode := 103;
				bErrorMsg  := 'Invalid Delivery status code';
            WHEN OTHERS THEN
				bSuccess := 'F';
				bErrorCode := 199;
				bErrorMsg  := 'Oracle Error validating Delivery Status Code : '||SQLCODE||', '||SUBSTR(SQLERRM, 1, 80);
			END;
		
            -- The data is validatated successfully and will now be saved		
			IF bSuccess = 'T' THEN
				BEGIN
					UPDATE Student_Item_Set_Status
					SET Completion_Status = pDeliveryStatus,
						Start_Date_Time = vStartDate,
						Completion_Date_Time = vCompletionDate
					WHERE Test_Roster_Id = pRosterId
					  AND Item_Set_ID = vItemSet_Id;
					  
					bErrorCode := 0;
					bErrorMsg  := '';
					
					--Update Roaster Completion Status
					UpdateRosterTestStatus(pRosterId);
					COMMIT;  
				EXCEPTION
				WHEN OTHERS THEN
					bSuccess := 'F';
					bErrorCode := 199;
					bErrorMsg  := 'Oracle Error updating Student_Item_Set_Status_table: '||SQLCODE||', '||SUBSTR(SQLERRM, 1, 80);
					ROLLBACK;
				END;
		    
			END IF;
			
		END IF;
	    DBMS_OUTPUT.PUT_LINE(bErrorMsg);
		OPEN pResultCursor FOR
		SELECT pRosterID RosterId, pOasTestId OasTestId, pDeliveryStatus DeliveryStatus,
   		       pStartedDate Started_Date, pCompletedDate Completed_Date, 
			   bSuccess AS Success, bErrorCode AS ErrorCode, bErrorMsg AS ErrorMsg FROM DUAL;
		
	EXCEPTION
	WHEN OTHERS THEN
		bSuccess := 'F';
		bErrorCode := 199;
		bErrorMsg  := 'Oracle Error in ValidateSaveTestStatus: '||SQLCODE||', '||SUBSTR(SQLERRM, 1, 80);
		
		OPEN pResultCursor FOR
		SELECT pRosterID RosterId, pOasTestId OasTestId, pDeliveryStatus DeliveryStatus,
   		       pStartedDate Started_Date, pCompletedDate Completed_Date, 
			   bSuccess AS Success, bErrorCode AS ErrorCode, bErrorMsg AS ErrorMsg FROM DUAL;

		DBMS_OUTPUT.PUT_LINE(bErrorMsg);
		
	END ValidateSaveTestStatus;
	
	/**********************************************************
	* PROCEDURE TO UPDATE THE TEST_ROSTER COMPLETION STATUS
	* BASED ON THE ROSTER SUB-TEST COMPLETION STATUS
	*
	**********************************************************/
	PROCEDURE UpdateRosterTestStatus(
	   pRosterId           IN NUMBER) AS

	   --pRosterId NUMBER := 8662811;
	   --pDeliveryStatus VARCHAR2(2);
	   
	   CURSOR curSISS IS
	   SELECT Completion_Status, Item_set_Order FROM Student_Item_Set_Status
	   WHERE Test_Roster_Id = pRosterId
       ORDER BY 2;	   
	   
	   vFinalStatus VARCHAR2(2) := null;
	BEGIN
		FOR rec_SISS IN curSISS LOOP
		   DBMS_OUTPUT.PUT_LINE('rec_SISS.Completion_Status is:'||rec_SISS.Completion_Status);
		   CASE rec_SISS.Completion_Status
				WHEN 'IP' THEN 
					vFinalStatus := 'IP';
					EXIT;
				WHEN 'IN' THEN 
					vFinalStatus := 'IN';
					EXIT;
				ELSE
                  NULL;				
		   END CASE;
		END LOOP;
		
		-- Update the Roster Status,  Update with CO if all the subtest is complete
		DBMS_OUTPUT.PUT_LINE('vFinalStatus is:'||NVL(vFinalStatus, 'ZZZ'));
        IF vFinalStatus IS NOT NULL THEN
			UPDATE Test_Roster SET Test_Completion_Status = vFinalStatus
			WHERE Test_Roster_ID = pRosterId;
		ELSE 
			UPDATE Test_Roster ROS 
			SET Test_completion_status = DECODE((SELECT count(*) FROM Student_Item_Set_Status 
				   WHERE Test_Roster_Id = ROS.Test_Roster_Id AND Completion_Status != 'CO'), 0, 'CO', Test_Completion_Status)  
			WHERE Test_Roster_Id = pRosterId;
		
		END IF;
		
		
		
	EXCEPTION
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('SQL Error: While updating Test_Roster table:'||SQLERRM(SQLCODE));
		ROLLBACK;
	END UpdateRosterTestStatus;
	

    
END PKG_BMTSYNC_TESTSTATUS;
/


/*
DECLARE
    TYPE REF_CURSOR IS REF CURSOR;

    pResultCursor  REF_CURSOR;

BEGIN
   PKG_BMTSYNC_TESTSTATUS.ValidateSaveData(8662811, 
         '',
		 '',
		 '4-17-2006 04:10:00 PM',
		 '04-17-2006 04:46:54 PM',
		 pResultCursor);
END;


   PKG_BMTSYNC_TESTSTATUS.ValidateSaveData(8662811, 
         'ISTEP_MC_G8_F3_SP14_SU1_DU1',
		 'CO',
		 '4-17-2006 04:10:00 PM',
		 '04-17-2006 04:46:54 PM',
		 pResultCursor);
{
    "teststatus": [
        {
            "oasRosterId": "8662811",
            "oasTestId": "ISTEP_MC_G8_F3_SP14_SU1_DU1",
            "deliverystatus": "CO",
            "startedDate": "04-17-2006 4:10:00 PM",
            "completedDate": "04-17-2006 4:46:54 PM"
        },
        {
            "oasRosterId": "8158654",
            "oasTestId": "ISTEP_MC_G8_F3_SP14_SU1_DU1",
            "deliverystatus": "IP",
            "startedDate": "04-17-2006 4:10:00 PM",
            "completedDate": "04-17-2006 4:46:54 PM"
        }
		
    ]
}
*/


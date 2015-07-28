CREATE OR REPLACE PACKAGE PKG_BMTSYNC_TESTADMINQUEUE AS
/*
*========================================================================================
* AUTHOR  : SANJEEV B
* CREATED : 12/22/2014
* PURPOSE : THIS PACKAGE WILL CONTAIN PROCEDURES ENQUEUING AND DEQUEUEING TEST_ADIMN QUEUE
*========================================================================================
*/
	TYPE REF_CURSOR_TYPE IS REF CURSOR;
	QUEUEPREFIX CONSTANT VARCHAR2(5)      := 'AQ_';
	QUEUETABLEPREFIX CONSTANT VARCHAR2(5) := 'AQT_';

	/*
	 * THIS PROCEDURE WILL ADD A TEST ADMIN INTO THE QUEUE
	 */
	PROCEDURE ADD_TESTADMIN_TOQUEUE
	(
	    PCUSTOMERID   IN NUMBER,
	    PTESTADMINID  IN NUMBER
	);
	
	
END PKG_BMTSYNC_TESTADMINQUEUE ;	
/

CREATE OR REPLACE PACKAGE BODY PKG_BMTSYNC_TESTADMINQUEUE AS

	/*
	 * THIS PROCEDURE WILL ADD A STUDENT MESSAGE INTO THE QUEUE
	 */
	PROCEDURE ADD_TESTADMIN_TOQUEUE
	(
	    PCUSTOMERID   IN NUMBER,
	    PTESTADMINID  IN NUMBER
	) AS
	    PASSIGNMENTMESSAGE      BMTSYNC_TESTADMIN_TYP;
		VENQUEUEOPTIONS	     	DBMS_AQ.ENQUEUE_OPTIONS_T;
		VMESSAGEPROPERTIES 		DBMS_AQ.MESSAGE_PROPERTIES_T;
		VQUEUENAME 				VARCHAR2(30) := 'AQ_TESTADMIN';
		VMSGID					RAW(16);
	BEGIN
        --Create student message
		PASSIGNMENTMESSAGE := BMTSYNC_TESTADMIN_TYP(PCUSTOMERID, PTESTADMINID);
		
		VMESSAGEPROPERTIES.EXPIRATION     := DBMS_AQ.NEVER;
		VMESSAGEPROPERTIES.PRIORITY := 9;

		-- PUSH THE MESSAGE ONTO THE QUEUE
		DBMS_AQ.ENQUEUE(VQUEUENAME, VENQUEUEOPTIONS, VMESSAGEPROPERTIES, PASSIGNMENTMESSAGE, VMSGID);
		--DBMS_OUTPUT.PUT_LINE(VMSGID);

	EXCEPTION
		WHEN OTHERS THEN
			RAISE_APPLICATION_ERROR(-20001, 'PKG_BMTSYNC_TESTADMINQUEUE.ADD_TESTADMIN_TOQUEUE FAILURE :' || SQLERRM(SQLCODE));
	END ADD_TESTADMIN_TOQUEUE;


	
	
END PKG_BMTSYNC_TESTADMINQUEUE;
/

set TERMOUT on
PROMPT PKG_BMTSYNC_TESTADMINQUEUE compiled


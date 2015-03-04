CREATE OR REPLACE PACKAGE PKG_BMTSYNC_ASSIGNMENTQUEUE AS
/*
*========================================================================================
* AUTHOR  : SANJEEV B
* CREATED : 12/09/2014
* PURPOSE : THIS PACKAGE WILL CONTAIN PROCEDURES ENQUEUING AND DEQUEUEING ASSIGNMENT QUEUE
*========================================================================================
*/
	TYPE REF_CURSOR_TYPE IS REF CURSOR;
	QUEUEPREFIX CONSTANT VARCHAR2(5)      := 'AQ_';
	QUEUETABLEPREFIX CONSTANT VARCHAR2(5) := 'AQT_';

	/*
	 * THIS PROCEDURE WILL ADD A TEST ADMIN AND STUDENT MESSAGE INTO THE QUEUE
	 */
	PROCEDURE ADD_ASSIGNMENT_TOQUEUE
	(
	    PCUSTOMERID   IN NUMBER,
		PTESTADMINID  IN NUMBER,
		PSTUDENTID    IN NUMBER,
		PROSTERID     IN NUMBER,
                PDATE         IN DATE
	);
	
	
END PKG_BMTSYNC_ASSIGNMENTQUEUE;	
/

CREATE OR REPLACE PACKAGE BODY PKG_BMTSYNC_ASSIGNMENTQUEUE AS

	/*
	 * THIS PROCEDURE WILL ADD A STUDENT MESSAGE INTO THE QUEUE
	 */
	PROCEDURE ADD_ASSIGNMENT_TOQUEUE
	(
	    PCUSTOMERID   IN NUMBER,
		PTESTADMINID  IN NUMBER,
		PSTUDENTID    IN NUMBER,
		PROSTERID     IN NUMBER,
                PDATE         IN DATE
	) AS
	    PASSIGNMENTMESSAGE      BMTSYNC_ASSIGNMENT_TYP;
		VENQUEUEOPTIONS	     	DBMS_AQ.ENQUEUE_OPTIONS_T;
		VMESSAGEPROPERTIES 		DBMS_AQ.MESSAGE_PROPERTIES_T;
		VQUEUENAME 				VARCHAR2(30) := 'AQ_ASSIGNMENT';
		VMSGID					RAW(16);
	BEGIN
        --Create student message
		PASSIGNMENTMESSAGE := BMTSYNC_ASSIGNMENT_TYP(PCUSTOMERID, PTESTADMINID, PSTUDENTID, PROSTERID, PDATE);
		
		VMESSAGEPROPERTIES.EXPIRATION     := DBMS_AQ.NEVER;
		VMESSAGEPROPERTIES.PRIORITY := 9;
		-- PUSH THE MESSAGE ONTO THE QUEUE
		DBMS_AQ.ENQUEUE(VQUEUENAME, VENQUEUEOPTIONS, VMESSAGEPROPERTIES, PASSIGNMENTMESSAGE, VMSGID);
		--DBMS_OUTPUT.PUT_LINE(VMSGID);

	EXCEPTION
		WHEN OTHERS THEN
			RAISE_APPLICATION_ERROR(-20001, 'PKG_BMTSYNC_ASSIGNMENTQUEUE.ADD_ASSIGNMENT_TOQUEUE FAILURE :' || SQLERRM(SQLCODE));
	END ADD_ASSIGNMENT_TOQUEUE;


	
	
END PKG_BMTSYNC_ASSIGNMENTQUEUE;
/

set TERMOUT on
PROMPT PKG_BMTSYNC_ASSIGNMENTQUEUE compiled
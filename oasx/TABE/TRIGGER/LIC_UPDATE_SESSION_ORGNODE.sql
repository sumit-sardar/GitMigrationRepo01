
/*Trigger: LIC_UPDATE_SESSION_ORGNODE */



CREATE OR REPLACE TRIGGER "LIC_UPDATE_SESSION_ORGNODE"
AFTER UPDATE
ON OAS.TEST_ROSTER REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
subtestcount NUMBER;
sessioncount NUMBER;

deadlock_detected EXCEPTION;
PRAGMA EXCEPTION_INIT(deadlock_detected, -60);
resource_busy EXCEPTION;
PRAGMA EXCEPTION_INIT(resource_busy, -54);


-- retrieve product licensure information for the customer and product associated w/ this test roster
   CURSOR COL_CURSOR IS
   SELECT COL.CUSTOMER_ID,
          COL.PRODUCT_ID,
          COL.SUBTEST_MODEL,
          COL.AVAILABLE,
          COL.RESERVED
     FROM TEST_ADMIN ADM, CUSTOMER_ORGNODE_LICENSE COL, PRODUCT PROD
    WHERE ADM.TEST_ADMIN_ID = :NEW.TEST_ADMIN_ID
      AND COL.ORG_NODE_ID = :NEW.ORG_NODE_ID
      AND (COL.PRODUCT_ID = PROD.PRODUCT_ID OR
          COL.PRODUCT_ID = PROD.PARENT_PRODUCT_ID)
      AND PROD.PRODUCT_ID = ADM.PRODUCT_ID
      AND COL.CUSTOMER_ID = ADM.CUSTOMER_ID
      AND PROD.LICENSE_ENABLED = 'T'
      FOR UPDATE OF AVAILABLE, RESERVED, CONSUMED WAIT 3;

BEGIN

   FOR COL IN COL_CURSOR LOOP
        -- IF USING SUBTEST PRICING, DETERMINE THE NUMBER OF NON-PRACTICE, NON-LOCATOR SUBTESTS IN THE MANIFEST
        IF(COL.SUBTEST_MODEL = 'T') THEN
            SELECT COUNT(DISTINCT TSU.LICENSABLE_ITEM_SET_ID) INTO SUBTESTCOUNT FROM ITEM_SET ISET, STUDENT_ITEM_SET_STATUS SISS, TEMP_SISS_UPDATE TSU
            WHERE ISET.ITEM_SET_ID = SISS.ITEM_SET_ID AND SISS.TEST_ROSTER_ID = :NEW.TEST_ROSTER_ID
            AND ISET.SAMPLE = 'F' AND ISET.ITEM_SET_LEVEL != 'L' AND SISS.COMPLETION_STATUS IN ('SC', 'NT')
            AND TSU.TEST_ROSTER_ID = :NEW.TEST_ROSTER_ID AND TSU.ITEM_SET_ID = SISS.ITEM_SET_ID;
        ELSE
            SUBTESTCOUNT := 1;
        END IF;

        -- IF A TEST SESSION IS CLOSED, RESERVED LICENSES CAN BE RETURNED TO THE AVAILABLE POOL
        IF(COL.RESERVED > 0 AND :NEW.TEST_COMPLETION_STATUS IN ('IC', 'NT') AND ((COL.SUBTEST_MODEL != 'T' AND :OLD.TEST_COMPLETION_STATUS = 'SC') OR (COL.SUBTEST_MODEL = 'T' AND :OLD.TEST_COMPLETION_STATUS NOT IN ('IC', 'NT')))) THEN
            UPDATE CUSTOMER_ORGNODE_LICENSE SET AVAILABLE = AVAILABLE + SUBTESTCOUNT, RESERVED = RESERVED - SUBTESTCOUNT
            WHERE CURRENT OF COL_CURSOR;
        ELSE
            -- IF A TEST SESSION IS RE-OPENED, LICENSE QUANTITIES MUST BE RE-RESERVED
            IF(:OLD.TEST_COMPLETION_STATUS IN ('IC', 'NT') AND :NEW.TEST_COMPLETION_STATUS NOT IN ('IC', 'NT', 'CO')) THEN
                IF(COL.AVAILABLE < SUBTESTCOUNT) THEN
                    -- CUSTOMER DOESN'T HAVE A LICENSE AVAILABLE FOR REGISTRATION, THROW ERROR TO APPLICATION
                    RAISE_APPLICATION_ERROR(-20100, 'INSUFFICIENT AVAILABLE LICENSE QUANTITY.');
                END IF;
                UPDATE CUSTOMER_ORGNODE_LICENSE SET AVAILABLE = AVAILABLE - SUBTESTCOUNT, RESERVED = RESERVED + SUBTESTCOUNT
                WHERE CURRENT OF COL_CURSOR;
                IF(COL.SUBTEST_MODEL != 'T') THEN
                    -- REVERSE THE ABOVE RESERVATION IF THE LICENSE WAS ALREADY CONSUMED IN SESSION MODEL AND STAYED CONSUMED ON CLOSURE
                    SELECT COUNT(DISTINCT ISET.ITEM_SET_ID) INTO SESSIONCOUNT FROM ITEM_SET ISET, STUDENT_ITEM_SET_STATUS SISS
                        WHERE ISET.ITEM_SET_ID = SISS.ITEM_SET_ID AND SISS.TEST_ROSTER_ID = :NEW.TEST_ROSTER_ID
                        AND ISET.SAMPLE = 'F' AND ISET.ITEM_SET_LEVEL != 'L' AND SISS.COMPLETION_STATUS IN ('CO', 'IP', 'IS', 'IN');
                        IF(SESSIONCOUNT != 0) THEN
                            UPDATE CUSTOMER_ORGNODE_LICENSE SET AVAILABLE = AVAILABLE + 1, RESERVED = RESERVED - 1
                                WHERE CURRENT OF COL_CURSOR;
                        END IF;
                END IF;
            ELSE
                -- IF A TEST SESSION IS CLOSED, AND A STUDENT HAS LOGGED IN BUT TAKEN ANY ACTUAL SUBTEST, RESERVED LICENSE SHOULD BE RELEASED.
                IF(:NEW.TEST_COMPLETION_STATUS = 'IC' AND COL.SUBTEST_MODEL != 'T' AND :OLD.TEST_COMPLETION_STATUS IN ('IP', 'IN', 'IS')) THEN
                    SELECT COUNT(DISTINCT ISET.ITEM_SET_ID) INTO SESSIONCOUNT FROM ITEM_SET ISET, STUDENT_ITEM_SET_STATUS SISS
                    WHERE ISET.ITEM_SET_ID = SISS.ITEM_SET_ID AND SISS.TEST_ROSTER_ID = :NEW.TEST_ROSTER_ID
                    AND ISET.SAMPLE = 'F' AND ISET.ITEM_SET_LEVEL != 'L' AND SISS.COMPLETION_STATUS IN ('CO', 'IP', 'IS', 'IN');
                    IF(SESSIONCOUNT = 0) THEN
                        UPDATE CUSTOMER_ORGNODE_LICENSE SET RESERVED = RESERVED - 1, AVAILABLE = AVAILABLE + 1
                            WHERE CURRENT OF COL_CURSOR;
                    END IF;
                END IF;
            END IF;
        END IF;
    END LOOP;

    EXCEPTION
        WHEN DEADLOCK_DETECTED THEN
            IF COL_CURSOR%ISOPEN THEN
                CLOSE COL_CURSOR;
            END IF;
        WHEN RESOURCE_BUSY THEN
            IF COL_CURSOR%ISOPEN THEN
                CLOSE COL_CURSOR;
            END IF;
        WHEN OTHERS THEN
            IF COL_CURSOR%ISOPEN THEN
                CLOSE COL_CURSOR;
            END IF;
            RAISE;

END 

/
CREATE OR REPLACE TRIGGER "TRG_ADDRESS_EOI_U_DEX"
  AFTER UPDATE ON ADDRESS
  REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW

DECLARE
  PRAGMA AUTONOMOUS_TRANSACTION;
  V_CUSTOMER_ID     INTEGER := 0;
  V_OK_EOI_CUSTOMER INTEGER := 0;
  V_OK_38_CUSTOMER  INTEGER := 0;
  V_RECORD_COUNT    INTEGER := 0;
  V_EOI_USER_ID     INTEGER := NULL;
  V_EOI_ADDRESS_ID  INTEGER := NULL;
  V_38_ADDRESS_ID   INTEGER := NULL;
  V_OK38_USER_COUNT INTEGER := NULL;
  V_OK_38_USER_ID   INTEGER := NULL;

BEGIN

  V_EOI_ADDRESS_ID := :NEW.ADDRESS_ID;

  SELECT USER_ID
    INTO V_EOI_USER_ID
    FROM USERS
   WHERE ADDRESS_ID = V_EOI_ADDRESS_ID;

  SELECT DISTINCT ORG.CUSTOMER_ID
    INTO V_CUSTOMER_ID
    FROM USER_ROLE UR, ORG_NODE ORG
   WHERE UR.USER_ID = V_EOI_USER_ID
     AND UR.ORG_NODE_ID = ORG.ORG_NODE_ID
     AND ORG.ACTIVATION_STATUS = 'AC'
     AND UR.ACTIVATION_STATUS = 'AC';

  SELECT COUNT(1)
    INTO V_RECORD_COUNT
    FROM OK_EOI_38_REPLICATE_CONFIG
   WHERE ACTIVATION_STATUS = 'AC';

  IF V_RECORD_COUNT = 1 THEN
  
    /*FETCHING THE OK-EOI AND OK3-8 CUSTOMERID*/
    SELECT OK.OK_EOI_CUSTOMER_ID, OK.OK_38_CUSTOMER_ID
      INTO V_OK_EOI_CUSTOMER, V_OK_38_CUSTOMER
      FROM OK_EOI_38_REPLICATE_CONFIG OK
     WHERE ACTIVATION_STATUS = 'AC';
  
    /*IF USER IS ASSOCIATED WITH OK-EOI CUSTOMER THEN ONLY PROCESS FURTHER LOGIC */
    IF V_CUSTOMER_ID = V_OK_EOI_CUSTOMER THEN
    
      /* CHECKING IF THE OK-EOI USER HAS ALREADY ANY OK3-8 USER ASSOCIATED WITH ITSELF */
      SELECT COUNT(1)
        INTO V_OK38_USER_COUNT
        FROM EOI_3TO8_USER_MAPPING OKMAP
       WHERE OKMAP.USER_ID_EOI = V_EOI_USER_ID
         AND OKMAP.ACTIVATION_STATUS = 'AC';
    
      /* IF MAPPING IS ALREADY PRESENT THEN UPDATE THE ADDRESS OF OK-38 USER ALSO*/
      IF V_OK38_USER_COUNT = 1 THEN
      
        SELECT OKMAP.USER_ID_3TO8
          INTO V_OK_38_USER_ID
          FROM EOI_3TO8_USER_MAPPING OKMAP
         WHERE OKMAP.USER_ID_EOI = V_EOI_USER_ID
           AND OKMAP.ACTIVATION_STATUS = 'AC';
      
        SELECT ADDRESS_ID
          INTO V_38_ADDRESS_ID
          FROM USERS
         WHERE USER_ID = V_OK_38_USER_ID
           AND ACTIVATION_STATUS = 'AC';
      
        UPDATE ADDRESS
           SET STREET_LINE1           = :NEW.STREET_LINE1,
               STREET_LINE2           = :NEW.STREET_LINE2,
               STREET_LINE3           = :NEW.STREET_LINE3,
               CITY                   = :NEW.CITY,
               STATEPR                = :NEW.STATEPR,
               COUNTRY                = :NEW.COUNTRY,
               ZIPCODE                = :NEW.ZIPCODE,
               PRIMARY_PHONE          = :NEW.PRIMARY_PHONE,
               CREATED_DATE_TIME      = :NEW.CREATED_DATE_TIME,
               FAX                    = :NEW.FAX,
               CREATED_BY             = :NEW.CREATED_BY,
               UPDATED_BY             = :NEW.UPDATED_BY,
               UPDATED_DATE_TIME      = :NEW.UPDATED_DATE_TIME,
               DATA_IMPORT_HISTORY_ID = :NEW.DATA_IMPORT_HISTORY_ID,
               SECONDARY_PHONE        = :NEW.SECONDARY_PHONE,
               ZIPCODE_EXT            = :NEW.ZIPCODE_EXT,
               PRIMARY_PHONE_EXT      = :NEW.PRIMARY_PHONE_EXT
         WHERE ADDRESS_ID = V_38_ADDRESS_ID;
      
      END IF;
      COMMIT;
    END IF; -- EOI CUSTOMER DATA REPLICATION ENDS
  END IF; -- CONFIG TABLE CHECK END

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('TRIGGER EXCEPTION WHEN RECORD UPDATED.');
END;
/
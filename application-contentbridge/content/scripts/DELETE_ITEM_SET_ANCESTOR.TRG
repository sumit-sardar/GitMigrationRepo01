CREATE OR REPLACE TRIGGER DELETE_ITEM_SET_ANCESTOR
 AFTER DELETE ON ITEM_SET_PARENT
FOR EACH ROW
DECLARE
BEGIN
   DELETE_ITEM_SET_ANCESTORS(:OLD.ITEM_SET_ID);
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END DELETE_ITEM_SET_ANCESTOR;

/


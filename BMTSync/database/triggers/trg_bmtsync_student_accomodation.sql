CREATE OR REPLACE TRIGGER TRG_BMTSYNC_STUDENT_ACCO
AFTER INSERT OR UPDATE ON STUDENT_ACCOMMODATION
FOR EACH ROW 
DECLARE
   vCustomer_ID    Customer.Customer_ID%TYPE;
BEGIN

	SELECT Std.Customer_ID 
	INTO vCustomer_ID
    FROM Student std , BMTSYNC_Customer Cust
    WHERE 
    Std.Customer_Id = Cust.Customer_Id AND 
    Std.Student_ID = :new.STUDENT_ID;


    PKG_BMTSYNC_Students.AddUpdateStudentAPIStatus(
        :new.STUDENT_ID,
	vCustomer_ID,
	'BMT',
	'New');

EXCEPTION		
WHEN NO_DATA_FOUND THEN
   NULL;
WHEN OTHERS THEN
   NULL;
END ;
/

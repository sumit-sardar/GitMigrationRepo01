CREATE TABLE LLRP_PRACTICE_DATA_LIST
(
  TEST_NAME           VARCHAR2(1024),
  ITEM_SET_NAME       VARCHAR2(1024),
  EXT_TST_ITEM_SET_ID VARCHAR2(1024),
  TIME_LIMIT          NUMBER,
  ITEM_ID             VARCHAR2(1024),
  ITEM_SORT_ORDER     NUMBER,
  TEST_LEVEL          VARCHAR2(10),
  SCHEDULE_UNIT_NAME  VARCHAR2(1024),
  SCHEDULE_UNIT_ORDER NUMBER,
  PRODUCT_NAME        VARCHAR2(1024),
  NEW_PRODUCT_ID      NUMBER,
  PARENT_PRODUCT_ID   NUMBER,
  CREATED_DATE_TIME   DATE DEFAULT SYSDATE,
  ACTIVATION_STATUS   VARCHAR2(2) 
)
/
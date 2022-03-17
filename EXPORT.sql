--------------------------------------------------------
--  File created - Thursday-March-17-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "SYS"."CUSTOMER" 
   (	"CUSTOMER_ID" NUMBER(10,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"LOGIN_ID" NUMBER(10,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(30 BYTE), 
	"IDENTITY_NUMBER" NUMBER, 
	"BIRTHDAY" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYS.CUSTOMER
SET DEFINE OFF;
Insert into SYS.CUSTOMER (CUSTOMER_ID,LOGIN_ID,FIRST_NAME,LAST_NAME,IDENTITY_NUMBER,BIRTHDAY) values (2,1,'ENES','?AH?N',14224209330,to_date('17-MAR-22','DD-MON-RR'));
Insert into SYS.CUSTOMER (CUSTOMER_ID,LOGIN_ID,FIRST_NAME,LAST_NAME,IDENTITY_NUMBER,BIRTHDAY) values (23,25,'enes22','sahin22',14224209330,to_date('17-MAR-22','DD-MON-RR'));
Insert into SYS.CUSTOMER (CUSTOMER_ID,LOGIN_ID,FIRST_NAME,LAST_NAME,IDENTITY_NUMBER,BIRTHDAY) values (4,3,'AYBERK','ORHAN',22222222222,to_date('17-MAR-22','DD-MON-RR'));
Insert into SYS.CUSTOMER (CUSTOMER_ID,LOGIN_ID,FIRST_NAME,LAST_NAME,IDENTITY_NUMBER,BIRTHDAY) values (21,24,'enes2','sahin2',14224209330,to_date('17-MAR-22','DD-MON-RR'));
Insert into SYS.CUSTOMER (CUSTOMER_ID,LOGIN_ID,FIRST_NAME,LAST_NAME,IDENTITY_NUMBER,BIRTHDAY) values (26,23,'enes2','sahin2',14224209330,to_date('17-MAR-22','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index SYS_C0010987
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS"."SYS_C0010987" ON "SYS"."CUSTOMER" ("CUSTOMER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010988
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS"."SYS_C0010988" ON "SYS"."CUSTOMER" ("LOGIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "SYS"."CUSTOMER" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYS"."CUSTOMER" MODIFY ("LOGIN_ID" NOT NULL ENABLE);
  ALTER TABLE "SYS"."CUSTOMER" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS"."CUSTOMER" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS"."CUSTOMER" MODIFY ("IDENTITY_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SYS"."CUSTOMER" MODIFY ("BIRTHDAY" NOT NULL ENABLE);
  ALTER TABLE "SYS"."CUSTOMER" ADD PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYS"."CUSTOMER" ADD UNIQUE ("LOGIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "SYS"."CUSTOMER" ADD CONSTRAINT "FK_LOGIN_ID" FOREIGN KEY ("LOGIN_ID")
	  REFERENCES "SYS"."CUSTOMER_LOGIN" ("LOGIN_ID") ON DELETE CASCADE ENABLE;

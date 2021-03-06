CREATE TABLE CUSTOMER_ADRESS 
(
    ADRESS_ID NUMBER(10) GENERATED BY DEFAULT AS IDENTITY,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    COUNTRY VARCHAR2(50) NOT NULL,
    CITY VARCHAR2(50) NOT NULL,
    TOWN VARCHAR2(50) NOT NULL,
    STREET VARCHAR2(50) NOT NULL,
    BUILDING_INFO VARCHAR2(50) NOT NULL,
    DOOR_NUMBER NUMBER(5) NOT NULL,
    ZIP_CODE NUMBER(10) NOT NULL,
    
    CONSTRAINT PRIMARY_KEY
    PRIMARY KEY (ADRESS_ID),
    
    CONSTRAINT FK_CUSTOMER_ID
    FOREIGN KEY (CUSTOMER_ID) REFERENCES SYS.customer(CUSTOMER_ID)
    ON DELETE CASCADE 
    
)



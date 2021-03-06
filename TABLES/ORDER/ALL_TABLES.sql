CREATE TABLE CUSTOMER_ORDER 
(
    ORDER_ID NUMBER(10) ,
    CAR_ID NUMBER(10) NOT NULL,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    PICK_UP_DATE DATE NOT NULL,
    RETURN_DATE DATE NOT NULL,
    CREATED_DATE DATE DEFAULT(SYSDATE),
    
    
    CONSTRAINT PK_ORDER_ID
    PRIMARY KEY (ORDER_ID),
    
    CONSTRAINT FK_ORDER_CAR_ID
    FOREIGN KEY (CAR_ID) REFERENCES CAR (CAR_ID),
    
    CONSTRAINT FK_ORDER_CUSTOMER_ID
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (CUSTOMER_ID)
    
    --CHECK PICUPDATE < SYS.DATE.NOW
)

CREATE TABLE ORDER_STATUS

(
    ORDER_STATUS_ID NUMBER(10) GENERATED BY DEFAULT AS IDENTITY (START WITH 100 INCREMENT BY 1),
    STATUS NVARCHAR2(30) NOT NULL,
    CREATED_DATE DATE DEFAULT(SYSDATE),
    
    CONSTRAINT ORDER_STATUS_PK
    PRIMARY KEY (ORDER_STATUS_ID)
);


CREATE TABLE ORDER_DETAILS

(
    ORDER_DETAIL_ID NUMBER(10),
    ORDER_ID NUMBER(10) UNIQUE NOT NULL,
    EXAMINE_DATE DATE NOT NULL,
    PRICE NUMBER(10,2) NOT NULL,
    TOATL_DAY NUMBER (3) NOT NULL,
    STATUS_ID NUMBER(10) NOT NULL,
    
    
    CONSTRAINT PK_ORDER_DETAIL_ID
    PRIMARY KEY (ORDER_DETAIL_ID),
    
    CONSTRAINT FK_ORDER_DETAIL_ORDER_ID
    FOREIGN KEY(ORDER_ID) REFERENCES CUSTOMER_ORDER (ORDER_ID)
    ON DELETE CASCADE,
    
    CONSTRAINT FK_ORDER_DETAIL_ORDER_STATUS_ID
    FOREIGN KEY(ORDER_STATUS_ID) REFERENCES ORDER_STATUS(ORDER_STATUS_ID)
    ON DELETE CASCADE

);
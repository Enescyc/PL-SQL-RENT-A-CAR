CREATE TABLE DRIVE_LICENCE_TYPE (
    LICENCE_TYPE_ID NUMBER(8) GENERATED BY DEFAULT AS IDENTITY,
    LICENCE_TYPE   VARCHAR2(30) NOT NULL UNIQUE,
    
    CONSTRAINT PRIMARY_KEY_COLUMN PRIMARY KEY ( LICENCE_TYPE_ID )
)
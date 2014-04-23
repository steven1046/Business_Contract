-- Generated by Oracle SQL Developer Data Modeler 4.0.0.833
--   at:        2014-04-10 14:56:57 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE BC_Amendment
  (
    id            INTEGER NOT NULL ,
    reason        VARCHAR2 (4000) ,
    start_date    DATE ,
    end_date      DATE ,
    description   VARCHAR2 (4000) ,
    amount        NUMBER ,
    date_created  DATE ,
    deleted       CHAR (1) ,
    contract_type VARCHAR2 (4000) ,
    Contract_id   INTEGER NOT NULL ,
    Department_id INTEGER
  ) ;
ALTER TABLE BC_Amendment ADD CONSTRAINT Amendment_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Contact_Log
  (
    id           INTEGER NOT NULL ,
    contact_date DATE ,
    reason       VARCHAR2 (4000) ,
    source       VARCHAR2 (4000) ,
    Party_id     INTEGER NOT NULL ,
    Contract_id  INTEGER
  ) ;
ALTER TABLE BC_Contact_Log ADD CONSTRAINT Contact_Log_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Contract
  (
    id             INTEGER NOT NULL ,
    start_date     DATE ,
    end_date       DATE ,
    description    VARCHAR2 (4000) ,
    initial_amount NUMBER ,
    current_amount NUMBER ,
    deleted        CHAR (1) ,
    Vendor_id      INTEGER NOT NULL
  ) ;
ALTER TABLE BC_Contract ADD CONSTRAINT Contract_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Department
  (
    id   INTEGER NOT NULL ,
    name VARCHAR2 (4000) ,
    logo BLOB ,
    deleted     CHAR (1) ,
    Location_id INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Department__IDX ON BC_Department
  (
    Location_id ASC
  )
  ;
  ALTER TABLE BC_Department ADD CONSTRAINT Department_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Document
  (
    id          INTEGER NOT NULL ,
    name        VARCHAR2 (4000) ,
    description VARCHAR2 (4000) ,
    mime_type   VARCHAR2 (4000) ,
    char_set    VARCHAR2 (4000) ,
    file_date BLOB ,
    date_created DATE ,
    deleted      CHAR (1) ,
    Contract_id  INTEGER ,
    Amendment_id INTEGER
  ) ;
ALTER TABLE BC_Document ADD CONSTRAINT Document_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Escalation
  (
    id            INTEGER NOT NULL ,
    amount        NUMBER ,
    percentage    NUMBER ,
    expected_date DATE ,
    description   VARCHAR2 (4000) ,
    Amendment_id  INTEGER
  ) ;
ALTER TABLE BC_Escalation ADD CONSTRAINT Escalation_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Invoice
  (
    id          INTEGER NOT NULL ,
    total       NUMBER ,
    balance     NUMBER ,
    due_date    DATE ,
    deleted     CHAR (1) ,
    Contract_id INTEGER
  ) ;
ALTER TABLE BC_Invoice ADD CONSTRAINT Invoice_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Location
  (
    id             INTEGER NOT NULL ,
    name           VARCHAR2 (4000) ,
    street         VARCHAR2 (4000) ,
    city           VARCHAR2 (4000) ,
    state_province VARCHAR2 (4000) ,
    zip            VARCHAR2 (4000) ,
    country        VARCHAR2 (4000) ,
    deleted        CHAR (1) ,
    Amendment_id   INTEGER ,
    FOREIGN        CHAR (1)
  ) ;
ALTER TABLE BC_Location ADD CONSTRAINT Location_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Note
  (
    id             INTEGER NOT NULL ,
    date_created   DATE ,
    note           VARCHAR2 (4000) ,
    Contract_id    INTEGER NOT NULL ,
    Amendment_id   INTEGER NOT NULL ,
    Contact_Log_id INTEGER NOT NULL ,
    tickler        CHAR (1)
  ) ;
ALTER TABLE BC_Note ADD CONSTRAINT Note_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Party
  (
    id         INTEGER NOT NULL ,
    first_name VARCHAR2 (4000) ,
    last_name  VARCHAR2 (4000) ,
    cell_phone VARCHAR2 (4000) ,
    fax_number VARCHAR2 (4000) ,
    work_phone VARCHAR2 (4000) ,
    email      VARCHAR2 (4000) ,
    deleted    CHAR (1) ,
    Vendor_id  INTEGER
  ) ;
ALTER TABLE BC_Party ADD CONSTRAINT Party_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Payment
  (
    id           INTEGER NOT NULL ,
    amount       NUMBER ,
    payment_date DATE ,
    receipt_image BLOB ,
    deleted      CHAR (1) ,
    payment_type VARCHAR2 (4000) ,
    Invoice_id   INTEGER NOT NULL
  ) ;
ALTER TABLE BC_Payment ADD CONSTRAINT Payment_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Receving_Log
  (
    id            INTEGER NOT NULL ,
    received_date DATE ,
    deleted       CHAR (1) ,
    Contract_id   INTEGER
  ) ;
ALTER TABLE BC_Receving_Log ADD CONSTRAINT Receving_Log_PK PRIMARY KEY ( id ) ;

CREATE TABLE BC_Vendor
  (
    id           INTEGER NOT NULL ,
    name         VARCHAR2 (4000) ,
    street       VARCHAR2 (4000) ,
    city         VARCHAR2 (4000) ,
    state_value  VARCHAR2 (4000) ,
    zip          VARCHAR2 (4000) ,
    country      VARCHAR2 (4000) ,
    deleted      CHAR (1) ,
    service_type VARCHAR2 (4000) ,
    account_type VARCHAR2 (4000) ,
    Party_id     INTEGER NOT NULL
  ) ;
ALTER TABLE BC_Vendor ADD CONSTRAINT Vendor_PK PRIMARY KEY ( id ) ;

ALTER TABLE BC_Amendment ADD CONSTRAINT Amendment_Contract_FK FOREIGN KEY ( Contract_id ) REFERENCES BC_Contract ( id ) ;

ALTER TABLE BC_Amendment ADD CONSTRAINT Amendment_Department_FK FOREIGN KEY ( Department_id ) REFERENCES BC_Department ( id ) ;

ALTER TABLE BC_Contact_Log ADD CONSTRAINT Contact_Log_Contract_FK FOREIGN KEY ( Contract_id ) REFERENCES BC_Contract ( id ) ;

ALTER TABLE BC_Contact_Log ADD CONSTRAINT Contact_Log_Party_FK FOREIGN KEY ( Party_id ) REFERENCES BC_Party ( id ) ;

ALTER TABLE BC_Contract ADD CONSTRAINT Contract_Vendor_FK FOREIGN KEY ( Vendor_id ) REFERENCES BC_Vendor ( id ) ;

ALTER TABLE BC_Department ADD CONSTRAINT Department_Location_FK FOREIGN KEY ( Location_id ) REFERENCES BC_Location ( id ) ;

ALTER TABLE BC_Document ADD CONSTRAINT Document_Amendment_FK FOREIGN KEY ( Amendment_id ) REFERENCES BC_Amendment ( id ) ;

ALTER TABLE BC_Document ADD CONSTRAINT Document_Contract_FK FOREIGN KEY ( Contract_id ) REFERENCES BC_Contract ( id ) ;

ALTER TABLE BC_Escalation ADD CONSTRAINT Escalation_Amendment_FK FOREIGN KEY ( Amendment_id ) REFERENCES BC_Amendment ( id ) ;

ALTER TABLE BC_Invoice ADD CONSTRAINT Invoice_Contract_FK FOREIGN KEY ( Contract_id ) REFERENCES BC_Contract ( id ) ;

ALTER TABLE BC_Location ADD CONSTRAINT Location_Amendment_FK FOREIGN KEY ( Amendment_id ) REFERENCES BC_Amendment ( id ) ;

ALTER TABLE BC_Note ADD CONSTRAINT Note_Amendment_FK FOREIGN KEY ( Amendment_id ) REFERENCES BC_Amendment ( id ) ;

ALTER TABLE BC_Note ADD CONSTRAINT Note_Contact_Log_FK FOREIGN KEY ( Contact_Log_id ) REFERENCES BC_Contact_Log ( id ) ;

ALTER TABLE BC_Note ADD CONSTRAINT Note_Contract_FK FOREIGN KEY ( Contract_id ) REFERENCES BC_Contract ( id ) ;

ALTER TABLE BC_Party ADD CONSTRAINT Party_Vendor_FK FOREIGN KEY ( Vendor_id ) REFERENCES BC_Vendor ( id ) ;

ALTER TABLE BC_Payment ADD CONSTRAINT Payment_Invoice_FK FOREIGN KEY ( Invoice_id ) REFERENCES BC_Invoice ( id ) ;

ALTER TABLE BC_Receving_Log ADD CONSTRAINT Receving_Log_Contract_FK FOREIGN KEY ( Contract_id ) REFERENCES BC_Contract ( id ) ;

ALTER TABLE BC_Vendor ADD CONSTRAINT Vendor_Party_FK FOREIGN KEY ( Party_id ) REFERENCES BC_Party ( id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             1
-- ALTER TABLE                             31
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
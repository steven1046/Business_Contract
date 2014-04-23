DROP SEQUENCE BC_Amendment_seq ; 
create sequence BC_Amendment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Amendment_PK_trig 
; 

create or replace trigger BC_Amendment_PK_trig 
before insert on BC_Amendment
for each row 
begin 
select BC_Amendment_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Contact_Log_seq ; 
create sequence BC_Contact_Log_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Contact_Log_PK_trig 
; 

create or replace trigger BC_Contact_Log_PK_trig 
before insert on BC_Contact_Log
for each row 
begin 
select BC_Contact_Log_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Contract_seq ; 
create sequence BC_Contract_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Contract_PK_trig 
; 

create or replace trigger BC_Contract_PK_trig 
before insert on BC_Contract
for each row 
begin 
select BC_Contract_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Department_seq ; 
create sequence BC_Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Department_PK_trig 
; 

create or replace trigger BC_Department_PK_trig 
before insert on BC_Department
for each row 
begin 
select BC_Department_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Document_seq ; 
create sequence BC_Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Document_PK_trig 
; 

create or replace trigger BC_Document_PK_trig 
before insert on BC_Document
for each row 
begin 
select BC_Document_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Escalation_seq ; 
create sequence BC_Escalation_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Escalation_PK_trig 
; 

create or replace trigger BC_Escalation_PK_trig 
before insert on BC_Escalation
for each row 
begin 
select BC_Escalation_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Invoice_seq ; 
create sequence BC_Invoice_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Invoice_PK_trig 
; 

create or replace trigger BC_Invoice_PK_trig 
before insert on BC_Invoice
for each row 
begin 
select BC_Invoice_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Location_seq ; 
create sequence BC_Location_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Location_PK_trig 
; 

create or replace trigger BC_Location_PK_trig 
before insert on BC_Location
for each row 
begin 
select BC_Location_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Note_seq ; 
create sequence BC_Note_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Note_PK_trig 
; 

create or replace trigger BC_Note_PK_trig 
before insert on BC_Note
for each row 
begin 
select BC_Note_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Party_seq ; 
create sequence BC_Party_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Party_PK_trig 
; 

create or replace trigger BC_Party_PK_trig 
before insert on BC_Party
for each row 
begin 
select BC_Party_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Payment_seq ; 
create sequence BC_Payment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Payment_PK_trig 
; 

create or replace trigger BC_Payment_PK_trig 
before insert on BC_Payment
for each row 
begin 
select BC_Payment_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Receving_Log_seq ; 
create sequence BC_Receving_Log_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Receving_Log_PK_trig 
; 

create or replace trigger BC_Receving_Log_PK_trig 
before insert on BC_Receving_Log
for each row 
begin 
select BC_Receving_Log_seq.nextval into :new.id from dual; 
end; 
/

DROP SEQUENCE BC_Vendor_seq ; 
create sequence BC_Vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER BC_Vendor_PK_trig 
; 

create or replace trigger BC_Vendor_PK_trig 
before insert on BC_Vendor
for each row 
begin 
select BC_Vendor_seq.nextval into :new.id from dual; 
end; 
/

DROP INDEX Contract_id_FK_0 ;
CREATE INDEX Contract_id_FK_0 ON BC_Amendment(Contract_id) ;
DROP INDEX Department_id_FK_1 ;
CREATE INDEX Department_id_FK_1 ON BC_Amendment(Department_id) ;
DROP INDEX Contract_id_FK_2 ;
CREATE INDEX Contract_id_FK_2 ON BC_Contact_Log(Contract_id) ;
DROP INDEX Party_id_FK_3 ;
CREATE INDEX Party_id_FK_3 ON BC_Contact_Log(Party_id) ;
DROP INDEX Vendor_id_FK_4 ;
CREATE INDEX Vendor_id_FK_4 ON BC_Contract(Vendor_id) ;
DROP INDEX Location_id_FK_5 ;
CREATE INDEX Location_id_FK_5 ON BC_Department(Location_id) ;
DROP INDEX Amendment_id_FK_6 ;
CREATE INDEX Amendment_id_FK_6 ON BC_Document(Amendment_id) ;
DROP INDEX Contract_id_FK_7 ;
CREATE INDEX Contract_id_FK_7 ON BC_Document(Contract_id) ;
DROP INDEX Amendment_id_FK_8 ;
CREATE INDEX Amendment_id_FK_8 ON BC_Escalation(Amendment_id) ;
DROP INDEX Contract_id_FK_9 ;
CREATE INDEX Contract_id_FK_9 ON BC_Invoice(Contract_id) ;
DROP INDEX Amendment_id_FK_10 ;
CREATE INDEX Amendment_id_FK_10 ON BC_Location(Amendment_id) ;
DROP INDEX Amendment_id_FK_11 ;
CREATE INDEX Amendment_id_FK_11 ON BC_Note(Amendment_id) ;
DROP INDEX Contact_Log_id_FK_12 ;
CREATE INDEX Contact_Log_id_FK_12 ON BC_Note(Contact_Log_id) ;
DROP INDEX Contract_id_FK_13 ;
CREATE INDEX Contract_id_FK_13 ON BC_Note(Contract_id) ;
DROP INDEX Vendor_id_FK_14 ;
CREATE INDEX Vendor_id_FK_14 ON BC_Party(Vendor_id) ;
DROP INDEX Invoice_id_FK_15 ;
CREATE INDEX Invoice_id_FK_15 ON BC_Payment(Invoice_id) ;
DROP INDEX Contract_id_FK_16 ;
CREATE INDEX Contract_id_FK_16 ON BC_Receving_Log(Contract_id) ;
DROP INDEX Party_id_FK_17 ;
CREATE INDEX Party_id_FK_17 ON BC_Vendor(Party_id) ;

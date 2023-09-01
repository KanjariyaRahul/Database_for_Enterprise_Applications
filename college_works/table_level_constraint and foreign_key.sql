
=================== table level constraint ==========================
CREATE TABLE TEB(
    no1  number (3),
    no2 number (3),
    check (no2>no1)
);

INSERT INTO TEB (no1,no2) VALUES (100,99);
Error report -
ORA-02290: check constraint (C##15618223042.SYS_C0012557) violated
-------------------------------------------------------

INSERT INTO TEB (no1,no2) VALUES (100,101);

================== foreign key  ========================

CREATE TABLE college ( 
    college_id number(3) PRIMARY KEY ,
    college_name varchar2(20),
    contact_number number(10)
);

INSERT INTO college VALUES (101,'czmg',1234567890);
INSERT INTO college VALUES (102,'atmiya',9874561230);


CREATE TABLE student (
    enr_no number(5) PRIMARY KEY,
    name varchar2(20),
    college_id number(3) REFERENCES college
);

INSERT INTO student VALUES (111, 'rahul',101);
1 row inserted.

INSERT INTO student VALUES (112, 'jay',103);

Error report -
ORA-02291: integrity constraint (C##15618223042.SYS_C0012564) violated - parent
key not found

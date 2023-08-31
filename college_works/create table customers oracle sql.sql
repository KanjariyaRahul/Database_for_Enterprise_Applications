----------- (1)create  table customers --------------

create table customers(
    customer_id number primary key,
    first_name varchar2(30) not null,
    last_name varchar2(30) not null,
    dob date,
    phone number(10)
    );

----------------- insert data in customers table -------------------

insert into emp(emp_id, manager_id,first_name,last_name,tite,phone) 
            VALUES (1,'', rahul','kanjariya','ceo','9265614292');
insert into customers (customer_id, first_name,last_name,dob,phone) 
            VALUES (2,'jay','kanjariya','22-04-2001',9265614292);
insert into customers (customer_id, first_name,last_name,dob,phone) 
            VALUES (3,'hardik','kanjariya','24-05-2003',9265614292);
insert into customers (customer_id, first_name,last_name,dob,phone) 
            VALUES (4,'abhay','kanjariya','27-06-2003',9126561429);


-------- select qurey in customers table ----------

            select * FROM customers

-------------------------output in customers tables--------------------------------------

 CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE
______________ _____________ ____________ ___________ _____________
             1 rahul         kanjariya    22-02-03       9265614292
             2 jay           kanjariya    22-04-01       9265614292
             3 hardik        kanjariya    24-05-03       9265614292
             4 abhay         kanjariya    27-06-03       9126561429

=================================================================================


------------------ (2) new table product_types -----------------------

CREATE TABLE product_types(
    product_types_id INTEGER CONSTRAINT product_types_pk PRIMARY key,
    name VARCHAR2(20) NOT NULL
);

----------insert QUERY in product_types---------

insert into product_types( product_types_id,name) 
            VALUES (1,'abc');

insert into product_types( product_types_id,name) 
            VALUES (2,'mno');

insert into product_types( product_types_id,name) 
            VALUES (3,'def');

insert into product_types( product_types_id,name) 
            VALUES (4,'xyz');

--------------- output in product_types-----------

PRODUCT_TYPES_ID    NAME
___________________ _______
                  1 abc
                  2 mno
                  3 def
                  4 xyz

===================================================================



create table student1(
    student_id number primary key,-
    first_name varchar2(30) not null,
    last_name varchar2(30) not null,
  	city varchar2(30) default 'rajkot',
    dob date,
    phone number(10) unique check(length(phone)=10)
    );
    
    insert into  student1 VALUES (1,'rahul','kanjariya','jamnagar','22-02-2003',9265614292);
    insert into  student1 (student_id,first_name,last_name,phone)VALUES (2,'rahul','kanjariya',9265614291);
==================
------------------------CREATE TABLE AND set CONSTRAINT NAME-----------------------------------
CREATE TABLE TEST (ID INT,
                   AMOUNT NUMBER(5) CONSTRAINT CHK_AMOUNT_MORE_THAN_100 CHECK(AMOUNT>100),
                   TRANS_DATE DATE DEFAULT
)
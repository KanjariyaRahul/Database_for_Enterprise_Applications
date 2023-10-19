
CREATE TABLE StudentInfo (
    student_id INT PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    date_of_birth DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15)
);

------------ insert data in StudentInfo table --------------------------------

insert into StudentInfo VALUES ( 101,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 102,'Emily','Davis', '20-mar-1999','F','emily.davis@email.com',987-654-3210);
insert into StudentInfo VALUES ( 103,'Michael','Johnson', '10-jul-1997','M','johnson@email.com',555-123-4567);
insert into StudentInfo VALUES ( 104,'Sarah','Wilson', '05-jan-2000','F','sarah.wilson@email.com',789-987-6543);
insert into StudentInfo VALUES ( 105,'David','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 106,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 107,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 108,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 109,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 110,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);

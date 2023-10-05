-- Question 1: Students and Courses Tables --------

-- create table in coureses---------

DROP TABLE Courses PURGE;
create table Courses(
    course_id number primary key,
    course_name  varchar2(100) 
    );

-- create table in student---------

DROP TABLE Students PURGE;
create table Students(
    student_id number primary key,
    student_name varchar2(50) ,
    enrollment_date date ,
    course_id number,
    foreign key (course_id) references Courses  
    );


-- Question 2: Employees and Departments Tables-------

-- create table in Employees---------

DROP TABLE Employees PURGE;
create table Employees(
    employee_id number primary key,
    first_name varchar2(50), 
    last_name varchar2(50), 
    department_id number,
    department_id number,
    foreign key (department_id) references Departments
    );

-- create table in Departments---------

DROP TABLE Departments PURGE;
create table Departments(
    department_id number primary key,
    department_name varchar2(100) , 
    );

-- Question 3: Orders and Customers Tables---------

-- create table in Customers---------

DROP TABLE Customers PURGE;
create table Customers(
    customer_id number primary key,
    customer_name varchar2(100), 
    email varchar2(100), 
    );

-- create table in Orders---------

DROP TABLE Orders PURGE;
create table Orders(
    order_id number primary key,
    order_date date,
    customer_id number,
    foreign key (customer_id) references Customers
    );


-- Question 4: Authors and Books Tables--------

-- create table in Authors---------

DROP TABLE Authors PURGE;
create table Authors(
    author_id number primary key,
    author_name varchar2(100), 
    nationality varchar2(50), 
    );

-- create table in Books---------

DROP TABLE Books PURGE;
create table Books(
    book_id number primary key,
    book_title varchar2(200),
    author_id number,
    foreign key (author_id) references Authors
    );


------------------ Courses Table Insert Questions: ------------------------

insert into Courses(course_id,course_name)
                       VALUES (201,'Database Management');
                       
insert into Courses(course_id,course_name)
                       VALUES (202,'Web Development');

insert into Courses(course_id,course_name)
                       VALUES (203,'Programming Fundamentals');

insert into Courses(course_id,course_name)
                       VALUES (204,'Data Structures');

insert into Courses(course_id,course_name)
                       VALUES (205,'Software Engineering');

insert into Courses(course_id,course_name)
                       VALUES (206,'Network Security');

insert into Courses(course_id,course_name)
                       VALUES (207,'Artificial Intelligence');

insert into Courses(course_id,course_name)
                       VALUES (208,'Mobile App Development');

insert into Courses(course_id,course_name)
                       VALUES (209,'Operating Systems');

insert into Courses(course_id,course_name)
                       VALUES (210,'Computer Graphics');

 ---------------- Students Table Insert Questions: -----------------

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (101,'John Smith','15-sep-2022',201);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (102,'Mary Johnson','20-aug-2022',202);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (103,'David Wilson','10-oct-2022',203);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (104,'Jessica Brown','05-jul-2022',204);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (105,'Emily Davis','30-nov-2022',205);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (106,'Daniel Miller','12-jun-2022',206);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (107,'Olivia Harris','25-dec-2022',207);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (108,'Liam Martinez','08-may-2022',208);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (109,'Ava Jones','18-apr-2022',209);

insert into Students(student_id,student_name,enrollment_date,course_id)
                       VALUES (110,'Noah Anderson','02-mar-2022',210);
                       







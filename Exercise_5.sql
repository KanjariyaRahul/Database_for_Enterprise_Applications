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


---------- Question 2: Employees and Departments Tables -------

-- create table in Departments---------

DROP TABLE Departments PURGE;
create table Departments(
    department_id number primary key,
    department_name varchar2(100) , 
    );


-- create table in Employees---------

DROP TABLE Employees PURGE;
create table Employees(
    employee_id number primary key,
    first_name varchar2(50), 
    last_name varchar2(50), 
    department_id number,
    salary number,
    foreign key (department_id) references Departments
    );


--------------- Departments Table Insert Questions: ----------------- 

insert into Departments(department_id,department_name)
                    VALUES (101,'Information Technology');

insert into Departments(department_id,department_name)
                    VALUES (102, 'Human Resources');

insert into Departments(department_id,department_name)
                    VALUES (103,'Marketing');

insert into Departments(department_id,department_name)
                    VALUES (104,'Finance');
                    
insert into Departments(department_id,department_name)
                    VALUES (105, 'Operations');

insert into Departments(department_id,department_name)
                    VALUES (106,'Research and Development');

insert into Departments(department_id,department_name)
                    VALUES (107, 'Customer Support');

insert into Departments(department_id,department_name)
                    VALUES (108, 'Sales');

insert into Departments(department_id,department_name)
                    VALUES (109, 'Quality Assurance');

insert into Departments(department_id,department_name)
                    VALUES (104, 'Legal Affairs');

------------------- Employees Table Insert Questions: -----------------

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1001,'John','Smith',101,60000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1002,'Mary','Johnson',102,55000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1003,'David','Wilson',103,62000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1004,'Jessica','Brown',101,58000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1005,'Emily','Smith',102,61000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1006,'Daniel','Miller',103,54000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1007,'Olivia','Harris',101,59000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1008,'Liam','Martinez',102,57000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1009,'Ava','Jones',103,63000.00);

insert into Employees(employee_id,first_name,last_name,department_id,salary)
                    VALUES (1010,'Noah','Anderson',101,56000.00);



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


======================== Students Table Select Queries: ==========

1. Retrieve the names of all students in the Students table.

    SELECT student_name FROM Students;

2.Find the students who were enrolled before January 1, 2022.

    SELECT * FROM Students WHERE date_enrolled < '1-jan-2022';

3. List the students whose names start with the letter 'D'.

    SELECT * FROM Students WHERE first_name LIKE 'D%';

4.Display the count of students in the Students table.

    SELECT COUNT(*) as student_count FROM Students;

5.Find the student with the highest student_id.

    


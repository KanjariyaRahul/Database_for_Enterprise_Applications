DROP TABLE Employees PURGE;
create table Employees(
                    employee_id int primary key,
                    first_name varchar2(50) ,
                    last_name varchar2(50),
                    hire_date date ,
                    salary number(10,2)
            );



insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (1,'John','Doe','01-Jul-2022',60000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (2,'Jane','Smith',null,55000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (3,'Michael','Johnson','15-mar-2023',null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (4,'Emily','Williams',null,null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (5,'Daniel','Brown','05-sep-2022',48000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (6,'Laura','Davis','20-apr-2023',52000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (7,'Matthew','Wilson','10-dec-2021',54000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (8,'Emma','Brown',null,null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (9,'Olivia','Jones','30-may-2023',59000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (10,'Noah','Smith','08-aug-2022',null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (11,'William','Johnson','25-jun-2021',45000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (12,'Ava','Williams',null,null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (13,'Sophia','Davis','18-feb-2023',57000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (14,'James','Wilson',null,null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (15,'Oliver','Miller','12-oct-2022',51000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (16,'Amelia','Brown',null,null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (17,'Benjamin','Davis','02-dec-2021',53000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (18,'Elijah','Wilson','09-mar-2023',null);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (19,'Lucas','Brown','22-jun-2022',56000.00);

insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (20,'Mia','Johnson',null,null);


  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             1 John          Doe          01-07-22         60000
             2 Jane          Smith                         55000 
             3 Michael       Johnson      15-03-23
             4 Emily         Williams
             5 Daniel        Brown        05-09-22         48000
             6 Laura         Davis        20-04-23         52000
             7 Matthew       Wilson       10-12-21         54000
             8 Emma          Brown
             9 Olivia        Jones        30-05-23         59000
            10 Noah          Smith        08-08-22
            11 William       Johnson      25-06-21         45000
            12 Ava           Williams
            13 Sophia        Davis        18-02-23         57000
            14 James         Wilson
            15 Oliver        Miller       12-10-22         51000
            16 Amelia        Brown
            17 Benjamin      Davis        02-12-21         53000 
            18 Elijah        Wilson       09-03-23
            19 Lucas         Brown        22-06-22         56000
            20 Mia           Johnson


----------------------- Basic SELECT Queries: ------------------------	

1. Display the details of all employees.
        
    SELECT * from Employees;

2. Show the first and last names of employees.

    SELECT first_name , last_name FROM Employees;

3. List the employee IDs and hire dates.

    SELECT employee_id, hire_date FROM Employees;

4. Retrieve the first name, last name, and salary of employees.

    SELECT first_name ,last_name, salary  FROM Employees;

5. Display all columns for employees hired after January 1, 2022.

    SELECT * FROM Employees WHERE hire_date > TO_DATE('01-jan-2022', 'DD-MM-YYYY');

6. Display the employee IDs and last names of employees.

    SELECT employee_id, last_name FROM Employees;

7. List the hire dates and salaries of all employees.

    SELECT hire_date, salary FROM Employees;

8. Display all columns for employees with a salary greater than $50000.00.

    SELECT * FROM Employees WHERE salary >50000.00;

9. Show the first name, last name, and hire date of employees hired before July 1, 2023.

   SELECT first_name,last_name,hire_date FROM Employees WHERE hire_date < TO_DATE('01-jul-2023', 'DD-MM-YYYY');

-------------------------- Using WHERE Clause: -------------------------

1. List employees hired in the year 2023.

     SELECT * FROM Employees WHERE EXTRACT(YEAR FROM hire_date) = 2023;

2. Show employees with salaries greater than $55000.00.

    SELECT * FROM Employees WHERE salary > 55000.00;

3. Display employees with null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NULL;

4. List employees with first names starting with 'J'.

    SELECT * FROM Employees WHERE first_name LIKE 'J%';

5. Retrieve employees with a salary between $50000.00 and $60000.00.

    SELECT * FROM employees WHERE salary >= 50000.00 AND salary <= 60000.00;

6. List employees with last names containing 'son'.

    SELECT * FROM employees WHERE last_name LIKE '%son';

7. Show employees with salaries less than $60000.00 and hired in 2022.

    SELECT * FROM Employees WHERE salary < 60000.00 AND EXTRACT(YEAR FROM hire_date) = 2022;

8. Display employees with hire dates after January 1, 2021, and salaries less than $55000.00.

    SELECT * FROM Employees WHERE hire_date > TO_DATE('01-jan-2021', 'DD-MM-YYYY') AND salary < 55000.00;

9. List employees with first names starting with 'M' or last names ending with 'son'.

    SELECT * FROM Employees WHERE first_name LIKE 'M%' AND last_name LIKE '%son';

10. Show employees with salaries greater than $50000.00 and not hired in 2023.

    SELECT * FROM Employees WHERE salary > 50000.00 AND EXTRACT(YEAR FROM hire_date) != 2023;

--------------------- Using NVL() Function: --------------------

1. Show the employee IDs and salaries. Replace null salaries with 0.

    SELECT Employee_id, NVL(salary, 0) AS salary FROM employees;

2. Display the first name and last name of employees. Replace null first names with 'Unknown'.

    SELECT NVL(first_name, 'Unknown') AS first_name, last_name FROM employees;

-- 3. Show the employee IDs and salaries. Replace null salaries with the average salary.--

----------------- Using Concatenate Operator: ---------------------

1. List the full names (first name and last name) of employees.

  SELECT first_name || ' ' || last_name As full_name FROM Employees;

2. Show employee IDs and concatenated first and last names.

  SELECT employee_id, first_name || ' ' || last_name As full_name FROM Employees;

3. Display a message: "Employee [employee_id] [first_name] [last_name] has a salary of [salary]".

  SELECT 'Employee ' || employee_id || ' ' || first_name || ' ' || last_name || ' has a salary of ' || NVL (salary,0) || '.' AS message
  FROM employees;

4. List the full names (last name, comma, first name) of employees.

    SELECT last_name || ',' || first_name AS full_name FROM employees;

5. Show employee IDs and concatenated last name, space, and first name.

    SELECT employee_id, last_name || ' ' || first_name As full_name FROM Employees;

6. Display a message: "Employee [last_name], [first_name] has a salary of [salary]."

    SELECT 'Employee' || ' ' || last_name || ' ' || first_name || ' ' || 'has a salary of' || salary || ' ' || '.' AS message FROM Employees; 

----------------------------  Using ANY(), SOME(), and ALL(): -------------------------
 1. List employees with salaries greater than ANY other employees salary.
    
    SELECT * From Employees WHERE salary > ANY (SELECT salary FROM Employees);

2.  Show employees with salaries greater than the minimum salary in the company.

    SELECT * FROM Employees WHERE salary > (SELECT MIN(salary) FROM Employees);

3. Display employees with salaries less than ALL other employees salaries.

    SELECT * FROM Employees WHERE salary < ALL (SELECT salary FROM Employees);

4. List employees with salaries greater than ANY other employees salary.
    
    SELECT * FROM Employees WHERE salary > ANY (SELECT salary FROM Employees);

5. Show employees with salaries greater than SOME of the salaries.

    SELECT * FROM Employees WHERE salary > SOME (SELECT salary FROM Employees);

6. Display employees with salaries less than ALL employees salaries.

    SELECT * FROM Employees WHERE salary < ALL (SELECT salary FROM Employees);

--------------------------- Combining Functions and Operators: ---------

1. Display the employee IDs and names for employees hired in 2022.

    SELECT employee_id, first_name, last_name FROM Employees WHERE EXTRACT(YEAR FROM hire_date) = 2022;

2. List the first name and salary of employees with salaries greater than $55000.00 and hired in 2021.

    SELECT  first_name, salary FROM Employees WHERE salary > 55000 AND EXTRACT(YEAR FROM hire_date) = 2021;

3. Display the employee IDs and last names for employees hired before January 1, 2022, or with a salary greater than $55000.00.

    SELECT  employee_id,last_name FROM Employees WHERE hire_date < TO_DATE('01-jan-2022', 'DD-MM-YYYY') AND salary > 55000.00;

4. List the first name and salary of employees hired in 2022 with salaries greater than $50000.00.

    SELECT  first_name, salary FROM Employees WHERE  EXTRACT(YEAR FROM hire_date) = 2022 AND salary > 50000;

------------------- Using Logical Operators: -----------------------------------------

1. Display employees hired in 2022 with salaries less than $55000.00.

    SELECT * FROM Employees WHERE EXTRACT(YEAR FROM hire_date) = 2022 AND salary < 55000.00;

2. List employees with non-null hire dates and salaries.

    SELECT * FROM Employees WHERE hire_date IS NOT NULL AND salary IS NOT NULL;

3. Show employees with salaries less than $50000.00 or hired in 2023.

    SELECT * FROM Employees WHERE salary < 50000.00 OR EXTRACT(YEAR FROM hire_date) = 2023;

4. Display employees with last names containing 'Brown' or hired in 2023 with salaries less than $60000.00.

    SELECT * FROM Employees WHERE (last_name LIKE '%Brown%' OR EXTRACT(YEAR FROM hire_date) = 2023) AND salary < 60000.00;

5. List employees with non-null hire dates and salaries.

    SELECT * FROM Employees WHERE hire_date IS NOT NULL AND salary IS NOT NULL;

6. Show employees with salaries less than $50000.00 and hire dates either before January 1, 2022, or null.

    SELECT * FROM Employees WHERE salary < 50000.00 AND (hire_date < DATE '2022-01-01' OR hire_date IS NULL);










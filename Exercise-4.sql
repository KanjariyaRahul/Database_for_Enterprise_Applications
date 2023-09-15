DROP TABLE Employees PURGE;
create table Employees(
                    employee_id int primary key,
                    first_name varchar2(50) ,
                    last_name varchar2(50),
                    hire_date date ,
                    salary number(10,2)
            );
===================== insert data in employee table ======================


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                          VALUES (101,'John','Doe','01-Jul-2022',60000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (102,'Jane','Smith',null,55000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                      VALUES (103,'Michael','Johnson','15-mar-2023',null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (104,'Emily','Williams',null,null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                      VALUES (105,'Daniel','Brown','05-sep-2022',48000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                       VALUES (106,'Laura','Davis','20-apr-2023',52000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                    VALUES (107,'Matthew','Wilson','10-dec-2021',54000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (108,'Emma','Brown',null,null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                      VALUES (109,'Olivia','Jones','30-may-2023',59000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                        VALUES (110,'Noah','Smith','08-aug-2022',null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                  VALUES (111,'William','Johnson','25-jun-2021',45000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (112,'Ava','Williams',null,null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                     VALUES (113,'Sophia','Davis','18-feb-2023',57000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (114,'James','Wilson',null,null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                     VALUES (115,'Oliver','Miller','12-oct-2022',51000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (116,'Amelia','Brown',null,null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                   VALUES (117,'Benjamin','Davis','02-dec-2021',53000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                       VALUES (118,'Elijah','Wilson','09-mar-2023',null);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                      VALUES (119,'Lucas','Brown','22-jun-2022',56000.00);


insert into Employees(employee_id,first_name,last_name,hire_date,salary)
                             VALUES (120,'Mia','Johnson',null,null);

===================================Distinct Keyword:===========================

1. Retrieve a list of unique first names from the Employees table.

    SELECT DISTINCT first_name FROM Employees;

2. Display a list of distinct last names of employees.

    SELECT DISTINCT last_name FROM Employees;

3. List the unique hire dates of all employees.

    SELECT DISTINCT hire_date FROM Employees;

4. Show distinct salary values from the table.

    SELECT DISTINCT salary FROM Employees;

5. Display a list of employee IDs with no duplicates.

    SELECT DISTINCT employee_id FROM Employees;

=============================== Comparing Values: ===========================

1. Retrieve employees with a salary greater than $50,000.

    SELECT * FROM Employees WHERE salary > 50000;

2. List employees hired after January 1, 2022.

    SELECT * FROM Employees WHERE hire_date > '01-jan-2022';

3. Display employees with a salary equal to $60,000.

    SELECT * FROM Employees WHERE salary = 60000;

4. Show employees with a first name equal to 'John'.

    SELECT * FROM Employees WHERE first_name = 'john';

5. List employees with a salary less than or equal to $55,000.

    SELECT * FROM Employees WHERE salary <= 55000;

=============================== Like Operator: ===========================

1. Retrieve employees with last names containing the substring 'son'.

    SELECT * FROM Employees WHERE last_name LIKE '%son%';

2. Display employees with first names ending with 'a'.

    SELECT * FROM Employees WHERE first_name LIKE '%a';

3. List employees with last names starting with 'Sm'.

    SELECT * FROM Employees WHERE last_name LIKE 'Sm%';

4. Show employees with first names containing 'e' in any position.

    SELECT * FROM Employees WHERE first_name LIKE '%e%';

5. Display employees with last names that exactly match 'Brown'.

    SELECT * FROM Employees WHERE last_name LIKE 'Brown';

=============================== IN Operator: ===========================

1. Retrieve employees with employee IDs 101, 102, and 103.

    SELECT * FROM Employees WHERE employee_id IN (101, 102, 103);

2. List employees with first names 'John', 'Jane', and 'Michael'.

    SELECT * FROM Employees WHERE first_name IN ('John', 'Jane', 'Michael');

3. Display employees with salaries of $50,000.00, $55,000.00, or $60,000.00.

    SELECT * FROM Employees WHERE salary IN (50000.00, 55000.00, 60000.00);

4. Show employees with last names 'Smith', 'Johnson', or 'Williams'.

    SELECT * FROM Employees WHERE last_name IN ('Smith', 'Johnson', 'Williams');

5. List employees with employee IDs 104, 105, or 106.

    SELECT * FROM Employees WHERE employee_id IN (104, 105, 106);

=============================== BETWEEN Operator: ===========================

1. Retrieve employees with salaries between $50,000.00 and $60,000.00.

    SELECT * FROM Employees WHERE salary BETWEEN 50000.00 AND 60000.00;

2. List employees hired between '2022-01-01' and '2022-12-31'.

    SELECT * FROM Employees WHERE hire_date BETWEEN '2022-01-01' AND '2022-12-31';

3. Display employees with employee IDs between 101 and 110.

    SELECT * FROM Employees WHERE employee_id BETWEEN 101 AND 110;

4. Show employees hired between '2021-01-01' and '2021-12-31'.

    SELECT * FROM Employees WHERE hire_date BETWEEN '2021-01-01' AND '2021-12-31';

5. List employees with salaries between $45,000.00 and $55,000.00.

    SELECT * FROM Employees WHERE salary BETWEEN 45000.00 AND 55000.00;

=============================== IS NULL Operator: ===========================

1. Retrieve employees with null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NULL;

2. List employees with null salaries.

    SELECT * FROM Employees WHERE salary IS NULL;

3. Display employees with null first names.

    SELECT * FROM Employees WHERE first_name IS NULL;

4. Show employees with null last names.

    SELECT * FROM Employees WHERE last_name IS NULL;

5. List employees with null employee IDs.

    SELECT * FROM Employees WHERE employee_id IS NULL;

=============================== Logical Operator ===========================

1. Retrieve employees with NaN (Not a Number) salaries.
 

2. List employees with infinite salaries.

3. Display employees with non-null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NOT NULL;

4. Show employees with salaries that are not NaN.

5. List employees with salaries that are not infinite.

=============================== NOT Like Operator: ===========================

1. Retrieve employees with last names not containing the substring 'son'.

    SELECT * FROM Employees WHERE last_name NOT LIKE '%son%';

2. List employees with first names not ending with 'a'.

    SELECT * FROM Employees WHERE first_name NOT LIKE '%a';

3. Display employees with last names not starting with 'Sm'.

    SELECT * FROM Employees WHERE last_name NOT LIKE 'Sm%';

4. Show employees with first names not containing 'e' in any position.

    SELECT * FROM Employees WHERE first_name NOT LIKE '%e%';

5. List employees with last names that do not exactly match 'Brown'.

    SELECT * FROM employees WHERE last_name != 'Brown';
    SELECT * FROM employees WHERE last_name <> 'Brown';

=============================== NOT IN Operator: ===========================

1. Retrieve employees with employee IDs not in the range 101 to 110.

    SELECT * FROM Employees WHERE employee_id NOT IN (101, 102, 103, 104, 105, 106, 107, 108, 109, 110);

2. List employees with first names not 'John', 'Jane', or 'Michael'.

    SELECT * FROM Employees WHERE first_name NOT IN ('John', 'Jane', 'Michael');

3. Display employees with salaries not $50,000.00, $55,000.00, or $60,000.00.

    SELECT * FROM Employees WHERE salary NOT IN (50000.00, 55000.00, 60000.00);

4. Show employees with last names not 'Smith', 'Johnson', or 'Williams'.

    SELECT * FROM Employees WHERE last_name NOT IN ('Smith', 'Johnson', 'Williams');

5. List employees with employee IDs not 104, 105, or 106.

    SELECT * FROM Employees WHERE employee_id NOT IN (104, 105, 106);

=============================== NOT BETWEEN Operator: =========================== 

1. Retrieve employees with salaries not between $50,000.00 and $60,000.00.

    SELECT * FROM Employees WHERE salary NOT BETWEEN 50000.00 AND 60000.00;

2. List employees hired not between '2022-01-01' and '2022-12-31'.

    SELECT * FROM Employees WHERE hire_date NOT BETWEEN '2022-01-01' AND '2022-12-31';

3. Display employees with employee IDs not between 101 and 110.

    SELECT * FROM Employees WHERE employee_id NOT BETWEEN 101 AND 110;

4. Show employees hired not between '2021-01-01' and '2021-12-31'.

    SELECT * FROM Employees WHERE hire_date NOT BETWEEN '2021-01-01' AND '2021-12-31';

5. List employees with salaries not between $45,000.00 and $55,000.00.

    SELECT * FROM Employees WHERE salary NOT BETWEEN 45000.00 AND 55000.00;

=============================== IS NOT NULL Operator: =========================== 

1. Retrieve employees with non-null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NOT NULL;

2. List employees with non-null salaries.

    SELECT * FROM Employees WHERE salary IS NOT NULL;

3. Display employees with non-null first names.

    SELECT * FROM Employees WHERE first_name IS NOT NULL;

4. Show employees with non-null last names.

    SELECT * FROM Employees WHERE last_name IS NOT NULL;

5. List employees with non-null employee IDs.

    SELECT * FROM Employees WHERE employee_id IS NOT NULL;

=============================== IS NOT NAN Operator: =========================== 

1. Retrieve employees with salaries that are not NaN.

2. List employees with no NaN values in the salary column.
3. Display employees with non-NaN first names.
4. Show employees with non-NaN last names.
5. List employees with no NaN values in the employee ID column.

=============================== IS NOT INFINITE Operator: =========================== 

1. Retrieve employees with salaries that are not infinite.
2. List employees with no infinite salary values.
3. Display employees with non-infinite hire dates.
4. Show employees with non-infinite first names.
5. List employees with no infinite employee IDs.

=============================== Logical Operator: =========================== 

1. Retrieve employees with a salary greater than $50,000 and hired after January 1, 2022.

    SELECT * FROM Employees WHERE salary > 50000.00 AND hire_date > '2022-01-01';

2. List employees with a salary greater than $60,000 or hired before January 1, 2021.

    SELECT * FROM Employees WHERE salary > 60000.00 AND hire_date < '2021-01-01';

3. Display employees with a salary greater than $50,000 and a last name starting with 'S'.

    SELECT * FROM Employees WHERE salary > 50000.00 AND last_name LIKE 'S%';

4. Show employees with a null hire date or a salary less than $40,000.

    SELECT * FROM Employees WHERE hire_date IS NULL OR salary < 40000.00; 

5. List employees with a salary greater than $55,000 and a first name not equal to 'Jane'.

    SELECT * FROM employees WHERE salary > 55000.00 AND first_name != 'Jane';

=============================== Using Table Alias: =========================== 

1. Display the first name and last name of employees using the alias 'Name'.

   SELECT e.first_name AS Name, e.last_name AS Name FROM Employees AS e;

2. List the hire date and salary of employees using the alias 'Employment_Details'.

    SELECT e.hire_date AS Employment_Details, e.salary AS Employment_Details FROM Employees AS e;

3. Retrieve the employee ID and hire date using the alias 'ID_Date'.
 
    SELECT e.employee_id AS ID_Date, e.hire_date AS ID_Date FROM Employees AS e;

4. Show the last name and salary of employees using the alias 'Last_Salary'.

    SELECT e.last_name AS Last_Salary, e.salary AS Last_Salary FROM Employees AS e;

5. List the first name and hire date of employees using the alias 'Name_Date'.

    SELECT e.first_name AS Name_Date, e.hire_date AS Name_Date FROM Employees AS e;

=============================== Using Column Alias:: =========================== 

1. Retrieve a list of employee IDs with the alias 'EmployeeID'.

    SELECT employee_id AS EmployeeID FROM Employees;

2. Display the first name and last name with the alias 'Full_Name'.

    SELECT first_name || ' ' || last_name AS Full_Name FROM Employees;

3. List the hire date with the alias 'Join_Date'.

    SELECT hire_date AS Join_Date FROM Employees;

4. Show the salary with the alias 'Income'.

    SELECT salary AS Income FROM Employees;

5. Display the last name and salary with the alias 'Details'.

    SELECT last_name || ', ' || salary AS Details FROM Employees;







    


































































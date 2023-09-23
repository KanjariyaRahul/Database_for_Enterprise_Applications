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

            FIRST_NAME
            _____________
            Oliver
            Lucas
            Daniel
            Emma
            Mia
            Jane
            Laura
            William
            Noah
            Ava
            Sophia
            James
            Amelia
            Benjamin
            Emily
            John
            Matthew
            Olivia
            Michael
            Elijah

2. Display a list of distinct last names of employees.

    SELECT DISTINCT last_name FROM Employees;

        LAST_NAME
        ____________
        Brown
        Miller
        Davis
        Wilson
        Doe
        Johnson
        Smith
        Williams
        Jones

3. List the unique hire dates of all employees.

    SELECT DISTINCT hire_date FROM Employees;

         HIRE_DATE
        ____________
        01-07-22
        20-04-23
        10-12-21
        30-05-23
        22-06-22
        18-02-23
        02-12-21
        05-09-22
        15-03-23
        09-03-23
        08-08-22
        25-06-21
        12-10-22

4. Show distinct salary values from the table.

    SELECT DISTINCT salary FROM Employees;

        SALARY
      _________
        55000
        51000
        59000
        56000
        60000
        48000
        54000
        45000
        53000
        52000
        57000

5. Display a list of employee IDs with no duplicates.

    SELECT DISTINCT employee_id FROM Employees;

         EMPLOYEE_ID
        ______________
           101
           102
           103
           104
           105
           106
           107
           108
           109
           110
           111
           112
           113
           114
           115
           116
           117
           118
           119
           120

=============================== Comparing Values: ===========================

1. Retrieve employees with a salary greater than $50,000.

    SELECT * FROM Employees WHERE salary > 50000;

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

2. List employees hired after January 1, 2022.

    SELECT * FROM Employees WHERE hire_date > '01-jan-2022';

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           103 Michael       Johnson      15-03-23
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000

3. Display employees with a salary equal to $60,000.

    SELECT * FROM Employees WHERE salary = 60000;

      EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           101      John            Doe         01-07-22      60000

4. Show employees with a first name equal to 'John'.

    SELECT * FROM Employees WHERE first_name = 'John';

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           101         John            Doe       01-07-22     60000

5. List employees with a salary less than or equal to $55,000.

    SELECT * FROM Employees WHERE salary <= 55000;

=============================== Like Operator: ===========================

1. Retrieve employees with last names containing the substring 'son'.

    SELECT * FROM Employees WHERE last_name LIKE '%son%';

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           103        Michael       Johnson      15-03-23
           107        Matthew       Wilson       10-12-21     54000
           111        William       Johnson      25-06-21     45000
           114        James         Wilson
           118        Elijah        Wilson       09-03-23
           120        Mia           Johnson

2. Display employees with first names ending with 'a'.

    SELECT * FROM Employees WHERE first_name LIKE '%a';

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           106         Laura         Davis        20-04-23      52000
           108         Emma          Brown
           109         Olivia        Jones        30-05-23      59000
           112         Ava           Williams
           113         Sophia        Davis        18-02-23      57000
           116         Amelia        Brown
           120         Mia           Johnson

3. List employees with last names starting with 'Sm'.

    SELECT * FROM Employees WHERE last_name LIKE 'Sm%';

     EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           102        Jane          Smith                    55000
           110        Noah          Smith        08-08-22


4. Show employees with first names containing 'e' in any position.

    SELECT * FROM Employees WHERE first_name LIKE '%e%';

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           102         Jane          Smith                     55000
           103         Michael       Johnson      15-03-23
           105         Daniel        Brown        05-09-22     48000
           107         Matthew       Wilson       10-12-21     54000
           114         James         Wilson
           115         Oliver        Miller       12-10-22     51000
           116         Amelia        Brown
           117         Benjamin      Davis        02-12-21     53000

5. Display employees with last names that exactly match 'Brown'.

    SELECT * FROM Employees WHERE last_name LIKE 'Brown';

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
 ______________ _____________ ____________ ____________ _________
           105     Daniel        Brown        05-09-22    48000
           108     Emma          Brown
           116     Amelia        Brown
           119     Lucas         Brown        22-06-22    56000

=============================== IN Operator: ===========================

1. Retrieve employees with employee IDs 101, 102, and 103.

    SELECT * FROM Employees WHERE employee_id IN (101, 102, 103);

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101      John          Doe          01-07-22    60000
           102      Jane          Smith                    55000
           103      Michael       Johnson      15-03-23

2. List employees with first names 'John', 'Jane', and 'Michael'.

    SELECT * FROM Employees WHERE first_name IN ('John', 'Jane', 'Michael');
    
    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           101      John          Doe          01-07-22      60000
           102      Jane          Smith                      55000
           103      Michael       Johnson      15-03-23

3. Display employees with salaries of $50,000.00, $55,000.00, or $60,000.00.

    SELECT * FROM Employees WHERE salary IN (50000.00, 55000.00, 60000.00);

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           101      John          Doe          01-07-22      60000
           102      Jane          Smith                      55000

4. Show employees with last names 'Smith', 'Johnson', or 'Williams'.

    SELECT * FROM Employees WHERE last_name IN ('Smith', 'Johnson', 'Williams');

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
    ______________ _____________ ____________ ____________ _________
           102      Jane          Smith                     55000
           103      Michael       Johnson      15-03-23
           104      Emily         Williams
           110      Noah          Smith        08-08-22
           111      William       Johnson      25-06-21     45000
           112      Ava           Williams
           120      Mia           Johnson

5. List employees with employee IDs 104, 105, or 106.

    SELECT * FROM Employees WHERE employee_id IN (104, 105, 106);

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           104      Emily         Williams
           105      Daniel        Brown        05-09-22     48000
           106      Laura         Davis        20-04-23     52000



=============================== BETWEEN Operator: ===========================

1. Retrieve employees with salaries between $50,000.00 and $60,000.00.

    SELECT * FROM Employees WHERE salary BETWEEN 50000.00 AND 60000.00;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

2. List employees hired between '2022-01-01' and '2022-12-31'.

    SELECT * FROM Employees WHERE hire_date BETWEEN '01-jan-2022' AND '31-dec-2022';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           105 Daniel        Brown        05-09-22         48000
           110 Noah          Smith        08-08-22
           115 Oliver        Miller       12-10-22         51000
           119 Lucas         Brown        22-06-22         56000

3. Display employees with employee IDs between 101 and 110.

    SELECT * FROM Employees WHERE employee_id BETWEEN 101 AND 110;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22

4. Show employees hired between '2021-01-01' and '2021-12-31'.

    SELECT * FROM Employees WHERE hire_date BETWEEN '01-jan-2021' AND '31-dec-2021';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           107 Matthew       Wilson       10-12-21         54000
           111 William       Johnson      25-06-21         45000
           117 Benjamin      Davis        02-12-21         53000

5. List employees with salaries between $45,000.00 and $55,000.00.

    SELECT * FROM Employees WHERE salary BETWEEN 45000.00 AND 55000.00;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           111 William       Johnson      25-06-21         45000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000

=============================== IS NULL Operator: ===========================

1. Retrieve employees with null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           102 Jane          Smith                         55000
           104 Emily         Williams
           108 Emma          Brown
           112 Ava           Williams
           114 James         Wilson
           116 Amelia        Brown
           120 Mia           Johnson

2. List employees with null salaries.

    SELECT * FROM Employees WHERE salary IS NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           108 Emma          Brown
           110 Noah          Smith        08-08-22
           112 Ava           Williams
           114 James         Wilson
           116 Amelia        Brown
           118 Elijah        Wilson       09-03-23
           120 Mia           Johnson

3. Display employees with null first names.

    SELECT * FROM Employees WHERE first_name IS NULL;

    no rows selected

4. Show employees with null last names.

    SELECT * FROM Employees WHERE last_name IS NULL;

    no rows selected

5. List employees with null employee IDs.

    SELECT * FROM Employees WHERE employee_id IS NULL;

    no rows selected

=============================== Logical Operator ===========================

1. Retrieve employees with NaN (Not a Number) salaries.
 
    SELECT * FROM EMPLOYEES WHERE SALARY IS NAN;

    no rows selected

2. List employees with infinite salaries.

    SELECT * FROM EMPLOYEES WHERE SALARY IS INFINITE;

    no rows selected

3. Display employees with non-null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NOT NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           103 Michael       Johnson      15-03-23
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000

4. Show employees with salaries that are not NaN.

    SELECT * FROM EMPLOYEES WHERE SALARY IS NOT NAN;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

5. List employees with salaries that are not infinite.

    SELECT * FROM EMPLOYEES WHERE SALARY IS NOT INFINITE;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000


=============================== NOT Like Operator: ===========================

1. Retrieve employees with last names not containing the substring 'son'.

    SELECT * FROM Employees WHERE last_name NOT LIKE '%son%';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
 ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

2. List employees with first names not ending with 'a'.

    SELECT * FROM Employees WHERE first_name NOT LIKE '%a';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           107 Matthew       Wilson       10-12-21         54000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000

3. Display employees with last names not starting with 'Sm'.

    SELECT * FROM Employees WHERE last_name NOT LIKE 'Sm%';

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

4. Show employees with first names not containing 'e' in any position.

    SELECT * FROM Employees WHERE first_name NOT LIKE '%e%';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           104 Emily         Williams
           106 Laura         Davis        20-04-23         52000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

5. List employees with last names that do not exactly match 'Brown'.

    SELECT * FROM employees WHERE last_name != 'Brown';
    SELECT * FROM employees WHERE last_name <> 'Brown';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           120 Mia           Johnson

=============================== NOT IN Operator: ===========================

1. Retrieve employees with employee IDs not in the range 101 to 110.

    SELECT * FROM Employees WHERE employee_id NOT IN (101, 102, 103, 104, 105, 106, 107, 108, 109, 110);

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

2. List employees with first names not 'John', 'Jane', or 'Michael'.

    SELECT * FROM Employees WHERE first_name NOT IN ('John', 'Jane', 'Michael');

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

3. Display employees with salaries not $50,000.00, $55,000.00, or $60,000.00.

    SELECT * FROM Employees WHERE salary NOT IN (50000.00, 55000.00, 60000.00);

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

4. Show employees with last names not 'Smith', 'Johnson', or 'Williams'.

    SELECT * FROM Employees WHERE last_name NOT IN ('Smith', 'Johnson', 'Williams');

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000

5. List employees with employee IDs not 104, 105, or 106.

    SELECT * FROM Employees WHERE employee_id NOT IN (104, 105, 106);

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

=============================== NOT BETWEEN Operator: =========================== 

1. Retrieve employees with salaries not between $50,000.00 and $60,000.00.

    SELECT * FROM Employees WHERE salary NOT BETWEEN 50000.00 AND 60000.00;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           105 Daniel        Brown        05-09-22         48000
           111 William       Johnson      25-06-21         45000

2. List employees hired not between '2022-01-01' and '2022-12-31'.

    SELECT * FROM Employees WHERE hire_date NOT BETWEEN '01-jan-2022' AND '31-dec-2022';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
 ______________ _____________ ____________ ____________ _________
           103 Michael       Johnson      15-03-23
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23

3. Display employees with employee IDs not between 101 and 110.

    SELECT * FROM Employees WHERE employee_id NOT BETWEEN 101 AND 110;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

4. Show employees hired not between '2021-01-01' and '2021-12-31'.

    SELECT * FROM Employees WHERE hire_date NOT BETWEEN '01-jan-2021' AND '01-dec-2021';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           103 Michael       Johnson      15-03-23
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000


5. List employees with salaries not between $45,000.00 and $55,000.00.

    SELECT * FROM Employees WHERE salary NOT BETWEEN 45000.00 AND 55000.00;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           109 Olivia        Jones        30-05-23         59000
           113 Sophia        Davis        18-02-23         57000
           119 Lucas         Brown        22-06-22         56000

=============================== IS NOT NULL Operator: =========================== 

1. Retrieve employees with non-null hire dates.

    SELECT * FROM Employees WHERE hire_date IS NOT NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
   ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           103 Michael       Johnson      15-03-23
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000

2. List employees with non-null salaries.

    SELECT * FROM Employees WHERE salary IS NOT NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

3. Display employees with non-null first names.

    SELECT * FROM Employees WHERE first_name IS NOT NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

4. Show employees with non-null last names.

    SELECT * FROM Employees WHERE last_name IS NOT NULL;

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

5. List employees with non-null employee IDs.

    SELECT * FROM Employees WHERE employee_id IS NOT NULL;

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

=============================== IS NOT NAN Operator: =========================== 

1. Retrieve employees with salaries that are not NaN.

    SELECT * FROM EMPLOYEES WHERE SALARY IS NOT NAN;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

2. List employees with no NaN values in the salary column.

    SELECT * FROM EMPLOYEES WHERE SALARY IS NOT NAN;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

3. Display employees with non-NaN first names.

    SELECT * FROM EMPLOYEES WHERE FIRST_NAME IS NOT NULL;

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

4. Show employees with non-NaN last names.

    SELECT * FROM EMPLOYEES WHERE LAST_NAME IS NOT NULL;

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

5. List employees with no NaN values in the employee ID column.

    SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IS NOT NAN;

       EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

=============================== IS NOT INFINITE Operator: =========================== 

1. Retrieve employees with salaries that are not infinite.

    SELECT * FROM EMPLOYEES WHERE SALARY IS NOT INFINITE;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

2. List employees with no infinite salary values.

    SELECT * FROM EMPLOYEES WHERE SALARY IS NOT INFINITE;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           119 Lucas         Brown        22-06-22         56000

3. Display employees with non-infinite hire dates.

    SELECT * FROM EMPLOYEES WHERE HIRE_DATE IS NOT NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           103 Michael       Johnson      15-03-23
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000

4. Show employees with non-infinite first names.

    SELECT * FROM EMPLOYEES WHERE FIRST_NAME IS NOT NULL;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

5. List employees with no infinite employee IDs.

    SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IS NOT INFINITE;

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson


=============================== Logical Operator: =========================== 

1. Retrieve employees with a salary greater than $50,000 and hired after January 1, 2022.

    SELECT * FROM Employees WHERE salary > 50000.00 AND hire_date > '01-jan-2022';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           106 Laura         Davis        20-04-23         52000
           109 Olivia        Jones        30-05-23         59000
           113 Sophia        Davis        18-02-23         57000
           115 Oliver        Miller       12-10-22         51000
           119 Lucas         Brown        22-06-22         56000

2. List employees with a salary greater than $60,000 or hired before January 1, 2021.

    SELECT * FROM Employees WHERE salary > 60000.00 AND hire_date < '01-jan-2021';

    no rows selected

3. Display employees with a salary greater than $50,000 and a last name starting with 'S'.

    SELECT * FROM Employees WHERE salary > 50000.00 AND last_name LIKE 'S%';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           102 Jane          Smith                         55000

4. Show employees with a null hire date or a salary less than $40,000.

    SELECT * FROM Employees WHERE hire_date IS NULL OR salary < 40000.00; 

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           102 Jane          Smith                         55000
           104 Emily         Williams
           108 Emma          Brown
           112 Ava           Williams
           114 James         Wilson
           116 Amelia        Brown
           120 Mia           Johnson

5. List employees with a salary greater than $55,000 and a first name not equal to 'Jane'.

    SELECT * FROM employees WHERE salary > 55000.00 AND first_name != 'Jane';

    EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
  ______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           109 Olivia        Jones        30-05-23         59000
           113 Sophia        Davis        18-02-23         57000
           119 Lucas         Brown        22-06-22         56000

=============================== Using Table Alias: =========================== 

1. Display the first name and last name of employees using the alias 'Name'.

  SELECT first_name || ' ' || last_name AS NAME FROM employees;

    NAME
__________________
John Doe
Jane Smith
Michael Johnson
Emily Williams
Daniel Brown
Laura Davis
Matthew Wilson
Emma Brown
Olivia Jones
Noah Smith
William Johnson
Ava Williams
Sophia Davis
James Wilson
Oliver Miller
Amelia Brown
Benjamin Davis
Elijah Wilson
Lucas Brown
Mia Johnson

2. List the hire date and salary of employees using the alias 'Employment_Details'.

    
  SELECT hire_date || ' ' || salary AS EMPLOYEE_DETAIL FROM Employees;
     EMPLOYEE_DETAIL
__________________
01-07-22 60000
         55000
15-03-23

05-09-22 48000
20-04-23 52000
10-12-21 54000

30-05-23 59000
08-08-22
25-06-21 45000

18-02-23 57000

12-10-22 51000

02-12-21 53000
09-03-23
22-06-22 56000



3. Retrieve the employee ID and hire date using the alias 'ID_Date'.
 
    SELECT employee_id || ' ' || hire_date AS ID_DATE FROM employees;

    ID_DATE
_______________
101 01-07-22
102
103 15-03-23
104
105 05-09-22
106 20-04-23
107 10-12-21
108
109 30-05-23
110 08-08-22
111 25-06-21
112
113 18-02-23
114
115 12-10-22
116
117 02-12-21
118 09-03-23
119 22-06-22
120



4. Show the last name and salary of employees using the alias 'Last_Salary'.

    SELECT last_name || '  ' || salary AS Last_Salary FROM Employees;

    LAST_SALARY
_________________
Doe  60000
Smith  55000
Johnson
Williams
Brown  48000
Davis  52000
Wilson  54000
Brown
Jones  59000
Smith
Johnson  45000
Williams
Davis  57000
Wilson
Miller  51000
Brown
Davis  53000
Wilson
Brown  56000
Johnson

5. List the first name and hire date of employees using the alias 'Name_Date'.

    SELECT first_name || ' ' || hire_date AS Name_Date FROM Employees;

              NAME_DATE
___________________
John 01-07-22
Jane
Michael 15-03-23
Emily
Daniel 05-09-22
Laura 20-04-23
Matthew 10-12-21
Emma
Olivia 30-05-23
Noah 08-08-22
William 25-06-21
Ava
Sophia 18-02-23
James
Oliver 12-10-22
Amelia
Benjamin 02-12-21
Elijah 09-03-23
Lucas 22-06-22
Mia

=============================== Using Column Alias:: =========================== 

1. Retrieve a list of employee IDs with the alias 'EmployeeID'.

    SELECT employee_id AS EmployeeID FROM Employees;
       
    EMPLOYEEID
_____________
          101
          102
          103
          104
          105
          106
          107
          108
          109
          110
          111
          112
          113
          114
          115
          116
          117
          118
          119
          120

2. Display the first name and last name with the alias 'Full_Name'.

    SELECT first_name || ' ' || last_name AS Full_Name FROM Employees;

    FULL_NAME
__________________
    John Doe
    Jane Smith
    Michael Johnson
    Emily Williams
    Daniel Brown
    Laura Davis
    Matthew Wilson
    Emma Brown
    Olivia Jones
    Noah Smith
    William Johnson
    Ava Williams
    Sophia Davis
    James Wilson
    Oliver Miller
    Amelia Brown
    Benjamin Davis
    Elijah Wilson
    Lucas Brown
    Mia Johnson

3. List the hire date with the alias 'Join_Date'.

    SELECT hire_date AS Join_Date FROM Employees;

    JOIN_DATE
  ____________
    01-07-22

    15-03-23

    05-09-22
    20-04-23
    10-12-21

    30-05-23
    08-08-22
    25-06-21

    18-02-23

    12-10-22

    02-12-21
    09-03-23
    22-06-22


4. Show the salary with the alias 'Income'.

    SELECT salary AS Income FROM Employees; 
       
    INCOME
 _________
    60000
    55000


    48000
    52000
    54000

    59000

    45000

    57000

    51000

    53000

    56000

5. Display the last name and salary with the alias 'Details'.

    SELECT last_name || ', ' || salary AS Details FROM Employees;

    DETAILS
 _________________
    Doe, 60000
    Smith, 55000
    Johnson,
    Williams,
    Brown, 48000
    Davis, 52000
    Wilson, 54000
    Brown,
    Jones, 59000
    Smith,
    Johnson, 45000
    Williams,
    Davis, 57000
    Wilson,
    Miller, 51000
    Brown,
    Davis, 53000
    Wilson,
    Brown, 56000
    Johnson,

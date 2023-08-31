==================== new create table employees =========================
create table employees(
    employess_id INTEGER primary key,
    manager_id INTEGER,
    first_name varchar2(30) not null,
    last_name varchar2(30) not null,
    title varchar2(255)
    );

--------------- insert row in employees tables --------------
INSERT INTO employees(employess_id, manager_id, first_name, last_name, title) 
                    VALUES (1,'','rahul','kanjariya','ceo' );

INSERT INTO employees(employess_id, manager_id, first_name, last_name, title) 
                    VALUES (2,'1','jay','nakum','sales manager' );
INSERT INTO employees(employess_id, manager_id, first_name, last_name, title) 
                    VALUES (3,'2','hardik','kanjariya','salesperson' );
INSERT INTO employees(employess_id, manager_id, first_name, last_name, title) 
                    VALUES (4  ,'2','abhay','nakum','salesperson' );

-------------------------output--------------------------
EMPLOYESS_ID    MANAGER_ID    FIRST_NAME    LAST_NAME            TITLE 
_______________ _____________ _____________ ____________ ________________
              1               rahul         kanjariya    ceo
              2             1 jay           nakum        sales manager
              3             2 hardik        kanjariya    salesperson
              4             2 abhay         nakum        salesperson


------------------------------------------------------------------
select employess_id, manager_id, first_name, last_name, title from employees;

EMPLOYESS_ID    MANAGER_ID    FIRST_NAME    LAST_NAME            TITLE 
_______________ _____________ _____________ ____________ ________________
              1               rahul         kanjariya    ceo
              2             1 jay           nakum        sales manager
              3             2 hardik        kanjariya    salesperson
              4             2 abhay         nakum        salesperson
-------------------------------------------------------------------
select employess_id, first_name, last_name, title from employees;

   EMPLOYESS_ID    FIRST_NAME    LAST_NAME            TITLE
_______________ _____________ ____________ ________________
              1 rahul         kanjariya    ceo
              2 jay           nakum        sales manager
              3 hardik        kanjariya    salesperson
              4 abhay         nakum        salesperson

-----------------------------------------------------------------


==================== new create table salary_grades =========================
create table salary_grades(
    salary_grades_id INTEGER primary key,
   low_salary number(6,0),
   hight_salary number(6,0)
    );

--------------- insert row in salary_grades tables --------------

INSERT INTO salary_grades(salary_grades_id, low_salary,  hight_salary) 
                    VALUES (1,1,25000);
INSERT INTO salary_grades(salary_grades_id, low_salary,  hight_salary) 
                    VALUES (2,25001,50000);
INSERT INTO salary_grades(salary_grades_id, low_salary,  hight_salary) 
                    VALUES (3,50001,75000);
INSERT INTO salary_grades(salary_grades_id, low_salary,  hight_salary) 
                    VALUES (4,75001,100000);

------------------- output ---------------------------------
   SALARY_GRADES_ID    LOW_SALARY    HIGHT_SALARY
___________________ _____________ _______________
                  1             1           25000
                  2         25001           50000
                  3         50001           75000
                  4         75001          100000

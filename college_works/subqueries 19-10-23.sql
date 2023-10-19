subqueries : 

	1. Single Row Subquery.
	2. Multiple Row subquery.
	3. Multiple Column Subquery.
	4. Correlated Subquery.
	5. nested subquery.

========== 1. single row subquery =========

select * from Employees where employee_id = 
	( 
	select employee_id from employees where first_name = 'rahul'
	)
 

------ avg salary for employees table ----------

select * from employees where 
salary > 
(select avg(salary) from employees);

-------------- select employee_id < 110 ------------

select * from 
(
select * from employees where employee_id < 110  
);


select salary from
(
 select employees_id , frist_name,salary from employees where employee_id < 110
);

=====================================================


============ 2. Multiple Row subquery. ===========

1. select * from employees where employee_id in (101,110,103,115,120);

2. select * from employees where first_name like '%e%';

---- select all first_name in 'e' letar in employee table ------

3. select * from employees 
   where 
   employee_id in (
   select employee_id from employees where first_name like '%e%'
   );


4. select first_name, salary from employees 
   where 
   employee_id in (
   select employee_id from employees where first_name like '%e%'
   );

-------- select first _name and salary in not name in 'e' letar in employees table ---

5. select first_name, salary from employees 
   where 
   employee_id not in (
   select employee_id from employees where first_name like '%e%'
   );

6. select *from employees 
   where
   salary < any(50000);

-------  select salary from employees table less than < 50000 ---------

7. select * from employees 
   where 
   salary < any (
   select  salary  from employees where salary < 50000
   );









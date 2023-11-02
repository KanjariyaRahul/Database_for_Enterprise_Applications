 date 02-11-2023 DATA

 ============= Topics ==================

 - GROUP BY
 - HAVING
 - ORDER BY
 - VIEW

 ------------ data impot in file ------------------

 @ d: \ file_name.sql

 ---------------------- distinct ------------------

 select distinct department from my_emp;

 --------- GroupBy ----------------- 

select avg(salary) from my_emp group by department;

select first_name , sum(salary) from my_emp group by first_name;

--------------------- round(salary) , max salary , min salary  and group by -------------------

select department, min(salary),max(salary), round(avg(salary) ,2),sum(salary) from my_emp group by department;


-------------------- having find department name Sales  ----------------------------


select department, min(salary),max(salary), round(avg(salary) ,2),sum(salary) from my_emp group by department having department like 'Sales' ;

select department, min(salary),max(salary), round(avg(salary) ,2),sum(salary) from my_emp group by department having department like 'Sales' or department like 'Legal' ;

 --------------------------- order by --------------------------

select department, min(salary),max(salary), round(avg(salary) ,2),sum(salary)
 from my_emp 
 group by department 
 order by sum(salary);


 select department, salary
 from my_emp 
 where salary < 11000
 order by salary;

 --------------------------- view --------------------------


 create view new_emp as 
 select department,salary
 from my_emp where salary < 11000 
 order by salary desc ;



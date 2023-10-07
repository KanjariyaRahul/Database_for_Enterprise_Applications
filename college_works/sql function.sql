=================== LPAD ===========================

select lpad(first_name,70,' ') from employees;
select lpad (rpad(first_name,50,'b')from employees;

===================== RPAD =========================

select rpad(first_name,70,' ') from employees;

====================== TRIM ====================

 - ltrim = before
 - rtrim = after

select ltrim(lpad(frist_name,54,'' )) from employees;

select ltrim(lpad(frist_name,54,'!' )) from employees;

select ltrim(lpad(frist_name,54,'!' ) '!') from employees; //at remove in ! 

========================= TRIM =============================

select trim(lpad(frist_name,54,'')) from employees;

 note : trim() function  will only remove white space before and after of data 


====================== nvl function ===========================

select nvl(frist_name, 'unkown') from empoyees;

select nvl(frist_name,'unkown'), nvl(last_name,'unkown'), nvl(hire_date,'01-jan-2022'), nvl(salary,0) from employees;,  

================ NVL2 function ======================

select nvl2(frist_name,'preseent', 'absent'), nvl(last_name,'unkown'), nvl(hire_date,'01-jan-2022'), nvl(salary,0) from employees;

------------- first name null in 'absent' ---------------

select  employee_id,nvl(frist_name,'unkown'), nvl(last_name,'unkown'), nvl(hire_date,'01-jan-2022'), nvl(salary,0),nvl2(first_name, 'persent', 'absent') from employees;

 ------------ salary in null in 0 and salary in 10% increment nvl2 function ---------------

select  employee_id,nvl(frist_name,'unkown'), nvl(last_name,'unkown'), nvl(hire_date,'01-jan-2022'), nvl(salary,0),nvl2(salary, salary*.1+salary,0) from employees;

====================== replace =============================

select first_name,replace(firat_name,'Divya','div') from employees;

select first_name,replace(upper(firat_name),'Divya','div') from employees;


 

        







Question 4-a

select*
from employees;

Question 4-b

select last_name,first_name,salary
from employees;

Question 4-c

select last_name,first_name,salary
from employees
where salary>20000;

Question 4-d

select last_name,first_name,salary
from employees
where  salary between 6000 and 20000;

Question 4-e

select last_name,first_name,salary
from employees
where department_id in (200,201,203,121) and salary between 6000 and 20000;

Question 4-f

select last_name,first_name,salary
from employees e,departments d
where e.department_id =d.department_id and d.department_name Like 'E%';

Question 4-g

select last_name,first_name,salary,job_id
from employees
where job_id not in ('IT_PROG','AD_VP');



Question 4-h

select distinct department_id from departments

Question 4-i

select department_id , salary  from employees order by department_id


Question 5-a

select department_id , salary , salary * 1.15 as augmented_salary from employees order by department_id

Question 5-b

select department_id , salary , salary * 1.15 as augmented_salary , salary*0.15 as Diffrence  from employees order by department_id

Question 5-c

select department_id , salary  from employees order by department_id asc , salary desc 


Question 6-a

select substr(job_title ,1,6) from jobs

Question 6-b

select first_name,last_name , length(last_name) as nbr_carac_nom from employees


Question 6-c

select concat(first_name,last_name) as Full_name ,salary from employees
 
Question 6-d

select concat(concat( concat('Prenom: ',last_name)  ,concat(' -- Nom: ',first_name) ) ,concat(' -- Salaire: ',salary )) as info_emp from employees

Question 6-e

select lower(first_name) Prenom ,upper(last_name) Nom from employees


Question 6-f

select last_name,first_name from employees where lower(first_name)='david'

Question 6-g

select last_name,first_name, salary ,concat(concat(substr(salary,1,length(salary)-3),','),substr(salary,length(salary)-2,length(salary))) as new_salary_format from employees

select last_name,first_name, TO_CHAR(salary,'999,999,999,999') from employees

Question 6-h
select last_name,first_name, TO_CHAR(salary,'999,999,999,999$') from employees

Question 6-i

select last_name,first_name, date_format(hire_date,'%D,%M,%Y') from employees


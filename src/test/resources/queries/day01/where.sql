/*
 we will use where keyword to filter requested result
 */

 -- get me first name, last name, salary from employees table where firstname is David
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where First_name='David'and LAST_NAME='Lee';

-- get me all information from employees table who is making salary more than 5000
select * from EMPLOYEES where SALARY>6000;

-- get me all information from employees table who is making salary less than and equal 5000
select distinct * from EMPLOYEES where SALARY<=6000;

-- get me email information from employees who is making salary less than and equal 6000
select EMAIL from EMPLOYEES where SALARY<=6000;

-- get me first name and salary information from employees making more than 6000 and department id= 80
select FIRST_NAME, SALARY from EMPLOYEES where SALARY >6000 and DEPARTMENT_ID=80;

-- get me firstname, salary from employees who is making more thant and equal 3000 and less than or equal to 6000
select FIRST_NAME, SALARY from EMPLOYEES where SALARY>=300 and SALARY<=6000;
-- between lower and upper ---> boundries are included
-- it will give all matching result within range
select FIRST_NAME, SALARY from EMPLOYEES where SALARY between  3000 and 6000;

-- get me all information from employees who is working as IT programmer and sales Representative
select * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

-- IN Clause
-- It uses or logic
-- get me all information from employees who is working as IT programmer and sales Representative
select * from EMPLOYEES where JOB_ID in('IT_PROG','SA_REP');

-- get me all information from employees wh
select * from EMPLOYEES where JOB_ID in('IT_PROG','SA_REP');

-- get all info from location table where city is Rome and Tokyo
select * from LOCATIONS where CITY in ('Roma', 'Tokyo');

--get me all information from employees table where ids are equals to 113, 145, 124, 122
select * from EMPLOYEES where JOB_ID in (113, 145, 124, 122);

--NULL and NOT NULL
select * from EMPLOYEES where DEPARTMENT_ID is null;

select * from EMPLOYEES where DEPARTMENT_ID is not null;
-- '' whatever you put in single quote it is case sensitive
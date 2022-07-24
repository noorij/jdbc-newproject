select * from DEPARTMENTS;

/*
 Multi-Row/Aggregate/ Grouping Functions
 count
 max
 min
 avg
 sum
 It will take multiple row and give us single output
 All aggregate functions ignore null vales
 */
--How many departments we have?
select count(*) from DEPARTMENTS;

--how many different name we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

--how many employees we have works as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');
-- Note --> ifyou want to count your result use * to get correct answer

-- How many employees we have as department_id is null
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

select FIRST_NAME from EMPLOYEES
where DEPARTMENT_ID is null ;
-- this give us wrong data if you want to count rows, since aggregate functions ignore the null values
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null ;
-- This both give us the same results since there is no null the result
select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null ;
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null ;

-- MAX
-- get me max salary from the employees
select max (SALARY) from EMPLOYEES;
--MIN
-- get me min salary from employees
select MIN (SALARY) from EMPLOYEES;

--SUM
--get me total salary of employees
select Sum(SALARY) from EMPLOYEES;

--AVG
--get me avg salary from employees
select avg(SALARY) from EMPLOYEES;

--ROUND --> it is not aggregate function. it is numeric function
select ROUND(avg(SALARY)) from EMPLOYEES;

select ROUND(avg(SALARY), 1) from EMPLOYEES;
select ROUND(avg(SALARY), 2) from EMPLOYEES;
select ROUND(avg(SALARY), 3) from EMPLOYEES;







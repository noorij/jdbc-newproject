select * from EMPLOYEES;

/*
 subquery
 -Query inside Query
 -Inner Queries will run first
 */

 -- Display all information from employees table who is making highest salary in the company?
select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY=2400;          -- Hardcoded what if salary will change

-- make it dynamic
select * from EMPLOYEES
where SALARY=(select Max(SALARY)from EMPLOYEES);

--Display all information who is making second highest salary

--find max salary
select Max(SALARY)from EMPLOYEES;
-- find second max salary
select Max(SALARY)from EMPLOYEES
where SALARY<24000;
-- make it dynamic
select Max(SALARY)from EMPLOYEES
where SALARY<(select Max(SALARY)from EMPLOYEES);
--find information about second highest salary
select *from EMPLOYEES
where SALARY=17000;

-- make it dynomic
select * from EMPLOYEES
where SALARY=(select Max(SALARY)from EMPLOYEES
              where SALARY<(select Max(SALARY)from EMPLOYEES));

-- Display all information who is getting more than avg salary
select avg(SALARY) from EMPLOYEES;
-- get all employees who is getting more than avg
select round(avg(SALARY)) from EMPLOYEES
where SALARY>6462;
--mike it dynamic
select  * from EMPLOYEES
where SALARY>(select round(avg(SALARY)) from EMPLOYEES);

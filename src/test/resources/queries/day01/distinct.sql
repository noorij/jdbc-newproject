/*
 Distinct
 Remove duplicates from our requested results. Original one still into databas
 */

 -- display only first name from employees
select FIRST_NAME from EMPLOYEES;

-- get me all unique first name from employee
select distinct FIRST_NAME from EMPLOYEES;

-- get me unique job ids from employees table
select distinct JOB_ID from EMPLOYEES;

-- get me unique country id from locations table
select distinct COUNTRY_ID from LOCATIONS;


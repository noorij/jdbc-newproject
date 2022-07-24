/*
 ROWNUM
 -It limits data that you want to see as result in row
 It works with < and <=
 */

select * from EMPLOYEES
where ROWNUM<11;

-- Display all information who is getting first 5 highest salary
--This is BAD PRactice -- Wrong
-- first it gets data without order them and cut the list from line 5 then order them based on salary
--asc
select * from EMPLOYEES
where ROWNUM<6
order by SALARY desc ;

-- Correct
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

--Display all information from employees who is getting 5th highest salary
--removes duplicates of 17000
select * from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

--Display all information from employees who is getting 15th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<16;

--Display all information from employees who is getting 213th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<214; -- this is just a sample from IQ's

--Display all information who is making 5th salary
--This is hardcoded
select * from EMPLOYEES
where SALARY=1300;

--make it dynamic
select  * from EMPLOYEES
WHERE SALARY=(select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
              where ROWNUM<6);

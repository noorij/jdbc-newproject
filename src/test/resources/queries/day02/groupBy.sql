select * from EMPLOYEES;

--How many different job id we have
select distinct JOB_ID from EMPLOYEES;

-- Display average salary for IT_PROG
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

-- Display average salary for SA_REP
select avg(SALARY) from EMPLOYEES
where JOB_ID='SA_REP';

-- Display average salary for MK_MAN
select avg(SALARY), min(SALARY), max(SALARY), sum(SALARY) from EMPLOYEES
where JOB_ID='MK_MAN';

select JOB_ID, avg(SALARY)from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY), min(SALARY), sum(SALARY), max (SALARY), count(*) from EMPLOYEES
group by JOB_ID;

-- HINT --> if there is each keyword it means we need to use Group by
--get me sum(salary) each department in employees table
select DEPARTMENT_ID, sum(SALARY), count(*), min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;

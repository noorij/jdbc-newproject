select * from EMPLOYEES;

/*
 Aliases
 --rename column  --> Give temporary for column. It will not change anything into database

 -- rename table --> JOINS
 */

 --Rename column
-- Spaces are not allowed to rename column.It makes all UPPERCASE
select FIRST_NAME as given_name from EMPLOYEES;

--It will not change anything from db
select FIRST_NAME from EMPLOYEES;

select max(salary) as highest_salary from employees;

---- Another to rename.It will use column name as it is.Also we can use spaces as well
select FIRST_NAME as "givn name" from  EMPLOYEES;

/*
 String fucntions
 -- concat
 in Java --> +  --> firstname+""+lastname
 In SQL --> ||  --> firstname||''||lastname
 */

 --Add email to @gmail.com domain and disply as full_email
select EMAIL ||'' || '@gmail.com' as full_email from EMPLOYEES;

-- Another way to concat
select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

--LOWER
select lower(concat(EMAIL, '@gmail.com')) as full_email from EMPLOYEES;


--UPPER
select upper(concat(EMAIL, '@gmail.com')) as full_email from EMPLOYEES;

--INITCAP
--It makes first letter uppercase
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

--Length
--It will give us the length of provided data
select length(EMAIL) from EMPLOYEES;

--Display all the employees first name and length of it in the result order them based on length
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length(FIRST_NAME);
-- by column aliases
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;
--by column index
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by 2;

/*
 SUBSTR (colName, beginIndex, numberOfChar)
-if beginIndex is 0, it is treated as 1
 -if beginIndex  is negative, it will start from backward of data
 -if numberOfChar is omitted, it works till the end
 */
 --Display all initial employees --> Steven King -->S.K.
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' from EMPLOYEES;

select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' from EMPLOYEES;

--IQ: Write a query to print the name and salary for all employees in the employee table who earn a salary larger than $500. Sort your results in ascending order of the last 3 characters in the employee's name, if two or more employees have names ending with same 3 characters, then sort them by highest (descending) salary
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY> 3000 -- we don't have any employee in our db that is why I used 3000
order by lower(substr(FIRST_NAME, -3)) asc, SALARY desc;

select substr(FIRST_NAME, -3) from EMPLOYEES
order by 1 asc;


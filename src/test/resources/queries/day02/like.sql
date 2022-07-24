
/*
 LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.
  - contains
  - startwith
  - endswith
 */

 --get me all employees whose first name starts with B
select * from EMPLOYEES
where First_NAME LIKE 'B%';
--get me all employees whose first name starts with B and has 5 letter
select * from EMPLOYEES
WHERE FIRST_NAME like 'B____';
--get me 5 letter names where the middle char is z
select * from EMPLOYEES
WHERE FIRST_NAME like '__z__';
--get me all employees whose first name ends with e and has 5 letter
select * from EMPLOYEES
WHERE FIRST_NAME like '____e';
--get me firstname where second char is a
select * from EMPLOYEES
where FIRST_NAME like '_a%';
--get me all information whose first name and ends with r
select * from EMPLOYEES
where FIRST_NAME like '%r';

--get me any job title information endswith manager fron jobs table
select * from JOBS
where JOB_TITLE like '%Manager';

--how may employee we have (get me any job title information endswith manager from jobs table)
select count (*) from JOBS
where JOB_TITLE like '%Manager';

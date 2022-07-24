select * from employees;

-- CREATE TABLE

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

CREATE TABLE scrumteam(
                          employeeId Integer PRIMARY KEY, --empid is Employee ID --> NOT NULL and UNIQUE
                          firstname varchar(30) not null,  -- cant be null
                          jobtitle varchar(20) not null,   -- cant be null
                          age Integer,    -- there is no constraints
                          salary Integer
);

select  * from scrumteam;

/*
 INSERT
INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );
 */
INSERT INTO scrumteam (employeeId, firstname, jobtitle, age, salary)
VALUES (1,'Mike','Tester',25,120000);

INSERT INTO scrumteam (employeeId, firstname, jobtitle, age, salary)
VALUES (2,'John','Tester',27,130000);

INSERT INTO scrumteam (employeeId, firstname, jobtitle)
VALUES (3,'Dembe','Developer');
INSERT INTO scrumteam(employeeId, firstname, jobtitle)
VALUES (9,'Zubair','Tester');

INSERT INTO scrumteam
VALUES (4,'Henry','SM',30,150000);

INSERT INTO scrumteam
VALUES (5,'Tom','PO',29,120000);

INSERT INTO scrumteam
VALUES (6,'Bob','Tester',29,120000);

select * from scrumteam;

/*
 UPDATE
  UPDATE table_name
  SET column1 = value1,
        column2 = value2 , ...
  WHERE condition;
 */

-- Increase all employees salary
UPDATE scrumteam
SET salary=salary+500;

select * from scrumteam;

-- Increase Testers employees salary
UPDATE scrumteam
SET salary=salary+5000
where jobtitle='Tester';

select * from scrumteam;

-- Add age for Dembe
UPDATE scrumteam
SET age=34,salary=160000
where firstname='Tom';

select * from scrumteam;
/*
 DELETE
DELETE FROM table_name
WHERE condition;
 */

DELETE from scrumteam
where firstname='Bob';

select * from scrumteam;

-- commit work or commit --> BOTH works
commit;

/*
 Add new column
 */
 ALTER TABLE scrumteam
ADD gender varchar(20);

select * from scrumteam;

--Update all scrumteam gender as Male
UPDATE SCRUMTEAM
Set GENDER='Male';

--Rename column
ALTER table scrumteam
rename column salary to annual_salary;

--Drop column
ALTER TABLE scrumteam
drop column gender;

ALTER TABLE scrumteam
RENAME To Agileteam;

select * from scrumteam; --> scrumteam  --> agileteam (renamed)
select * from AGILETEAM;


--Truncate
TRUNCATE TABLE AGILETEAM;
--Drop
DROP TABLE AGILETEAM;
--IQ --> What is the difference between Drop and Truncate?
    --Truncate --> will delete all table content/data
    --Drop --> Delete table itself with datas

commit; -- to save changes

--view--> it dosen't exist in database with data. it is just a virtual table to reuse the query
-- Table --> it is exist in database with their data

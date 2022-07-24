select * from EMPLOYEES;

create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials,
FIRST_NAME ||' makes '|| SALARY as Employee_salary from EMPLOYEES;

--S.K. Steven makes 24000EMPLOYEES

select * from EMPLOYEESINFO;

select initials from EMPLOYEESINFO;

select Employee_salary from EMPLOYEESINFO;

drop view EMPLOYEESINFO;


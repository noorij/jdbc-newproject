select * from EMPLOYEES;

-- 1- Display all first_name and department_name
    --Steven -- Executive
    --Neena -- Executive
select  * from EMPLOYEES;
select * from DEPARTMENTS;
--join and inner join is the same
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--2.Display all first_name and department_name including the  department without employee as well
select FIRST_NAME, d.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e right join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
--left join
select FIRST_NAME, d.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
--3.Display all first_name and department_name including the  employee without department

select  FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS d right join EMPLOYEES e
    on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--left
select  FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS d full join  EMPLOYEES e
on d.DEPARTMENT_ID = e.DEPARTMENT_ID;
--5.Display All cities and related country names
select city, COUNTRY_NAME from LOCATIONS l inner join  COUNTRIES c
    on l.COUNTRY_ID = c.COUNTRY_ID;

--6.Display All cities and related country names  including with countries without city
select * from COUNTRIES;
select * from LOCATIONS;
--right join
select City, COUNTRY_NAME
from LOCATIONS l right join COUNTRIES c
    on l.COUNTRY_ID = c.COUNTRY_ID;

-- this will not give us the correct answer, as we used right join but countries table on the right
select City, COUNTRY_NAME
from COUNTRIES c right join LOCATIONS l
                            on c.COUNTRY_ID = l.COUNTRY_ID;

--left join
select City, COUNTRY_NAME
from COUNTRIES c left join LOCATIONS l
    on c.COUNTRY_ID = l.COUNTRY_ID;

-- this will give us wrong answer as well if we use left join with countries table on the right
select City, COUNTRY_NAME
from LOCATIONS l left join COUNTRIES c
                           on l.COUNTRY_ID = c.COUNTRY_ID;

--7.Display all department name and  street address
select * from DEPARTMENTS;
select * from LOCATIONS;
select DEPARTMENT_NAME, STREET_ADDRESS
from DEPARTMENTS d inner join LOCATIONS l
    on d.LOCATION_ID = l.LOCATION_ID;



--8.Display first_name,last_name and department_name,city for all employees
select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from LOCATIONS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e inner join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
    on d.LOCATION_ID = l.LOCATION_ID;
--9.Display first_name,last_name and department_name,city,country_name for all employees, Additional If we get region ID


select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME, REGION_NAME from EMPLOYEES e
    inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
    inner join COUNTRIES c on l.COUNTRY_ID= c.COUNTRY_ID
    inner join  REGIONS r on c.REGION_ID= r.REGION_ID;

--10.Display first_name,last_name and department_name,city who is living in United Kingdom
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME from EMPLOYEES e
    inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
    inner join COUNTRIES c on l.COUNTRY_ID= c.COUNTRY_ID
where COUNTRY_NAME= 'United Kingdom';

--without country name
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY from EMPLOYEES e
        inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
        inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
where COUNTRY_ID= 'UK';

--11.Display how many employee we have for each country
select COUNTRY_NAME, count(*) from EMPLOYEES e
        inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
        inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
        inner join COUNTRIES c on l.COUNTRY_ID= c.COUNTRY_ID
group by COUNTRY_NAME
order by count(*);

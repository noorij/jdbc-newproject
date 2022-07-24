
-- get me how many departments we have in each location
select * from LOCATIONS;
select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID;
-- get me how many locations we have in each country
select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID asc;

select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by 2 desc ;

select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by count(*) asc ;
                    -- to sort them based on number of locations
                    -- asc is default but still we can use
-- get me how many countries we have in each region
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by REGION_ID;
         -- order then based on region_id
-- get me how many employees working for each manager
select MANAGER_ID, count(*) from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
having count(*)>5
order by 2 asc ;

-- ignore null values

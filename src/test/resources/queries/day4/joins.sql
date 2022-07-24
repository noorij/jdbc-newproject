select * from EMPLOYEES;

/*
 INNER JOIN
 Only matching portion of the table
 */

select * from CUSTOMER;
select * from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER inner join  ADDRESS
    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,ADDRESS.ADDRESS_ID,CUSTOMER.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER inner join  ADDRESS
    ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Aliases
--Instead of using table name we can use alias to specify table
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C inner join  ADDRESS A
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

/*
 Left outer join
 Matching part + only unique for left table
 */
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left join  ADDRESS A
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A Right join  CUSTOMER C
                           ON C.ADDRESS_ID = A.ADDRESS_ID;
--Right outer Join
-- Matching part + only unique for Right table

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A RIGHT JOIN  CUSTOMER C
                           ON C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C RIGHT join  ADDRESS A
                           ON C.ADDRESS_ID = A.ADDRESS_ID;

--Full outer Join
-- Matching part + only unique for Right+LEFT tables
--There is no different between full outer join vs full join
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C FULL JOIN  ADDRESS A
                           ON C.ADDRESS_ID = A.ADDRESS_ID;

/*
 Left outer with where
 -- get me only unique for left table
Note: --> if there is a customer with addressID 6, since there is not matching data
 from address table it will assign null value for address table addressID
 That is why we are using where with address.address_ID is null to get unique for left table
 */

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.Address_ID, ADDRESS.ADDRESS_ID, PHONE
from CUSTOMER left outer join ADDRESS on CUSTOMER.ADDRESS_ID= ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null ;

/*
 Full outer with where
 -- get me non-matching part of the tables
 */
select CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.Address_ID, ADDRESS.ADDRESS_ID, PHONE
from CUSTOMER full outer join ADDRESS on CUSTOMER.ADDRESS_ID= ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null or CUSTOMER.ADDRESS_ID is null ;

-
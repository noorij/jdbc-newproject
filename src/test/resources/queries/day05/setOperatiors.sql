select * from EMPLOYEES;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from Developers;
select * from TESTERS;
/*
 Union
 -removes duplicate, if the who row matches with each other
 -it orders in ace
 */
select * from Developers
union
select * from TESTERS;

--Here it removes the matching row which is Steven
select Names from Developers
union
select Names from TESTERS;

/*
 Union all
 - It doesn't remove duplicates
 -It doesn't sort results
 */

select * from Developers
union all
select * from TESTERS;

select Names from Developers
union all
select Names from TESTERS;

--Minus
select * from Developers
minus
select * from TESTERS;

select Names from Developers
minus
select Names from TESTERS;

--Intersect
--It will
select * from Developers
intersect
select * from TESTERS;

select Names from Developers
intersect
select Names from TESTERS;
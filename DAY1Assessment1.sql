create table student(id int,name text ,age text, subject text);
insert into student values (1,'AA','18','english'),(2,'A2','19','Maths'),(3,'A3','18','english');

select * from student;
select * from student order by id desc;

select * from student where subject="english";
select * from student where subject="Maths";


--creating table
create table studentz(ID integer,NAME varchar(20),GENDER varchar(20));

--inserting values
insert into studentz values(1,'waseem','male');
insert into studentz values(2,'rasheen','male');
insert into studentz values(3,'aditi','female');
insert into studentz values(4,'alia','female');
insert into studentz values(5,'kavin','male');
insert into studentz values(6,'noah','male');
insert into studentz values(7,'esha','female');
insert into studentz values(8,'kani','male');
insert into studentz values(9,'fardeen','male');
insert into studentz values(10,'maddy','male');

--showing table
select * from studentz;

--altering table
alter table studentz add age integer;

--updating the value
update studentz set age=20 where id between 1 and 10;

--showing table in alphabetical order
select *from studentz order by name;

--showing the data for female
select *from studentz where gender="female";


--JOINS
--Creating first table as table1
create table table1(ID integer,NAME varchar(20),AGE integer);
--inserting values in table1
insert into table1 values(1,'Waseem',20);
insert into table1 values(2,'Ibrahim',21);
insert into table1 values(3,'Abshan',20);

--Creating second table as table2
create table table2(ID integer,DEPT varchar(20),BATCH varchar(20));
--inserting values in table1
insert into table2 values(1,'CSE','21-25');
insert into table2 values(2,'MECH','23-27');
insert into table2 values(3,'Abshan','21-24');

--Joins operations
--inner join
select * from table1 inner join table2 on table1.id=table2.id;

--left join
select * from table1 left join  table2 on table1.age = table2.id ;

--aggregate functions
--count
select count (*) as count from table1;
select count (*) as count from studentz where gender="male";

--sum
select sum(age) as sum from studentz where gender='female';

--average
select avg(age) as avg from studentz where gender='female';

--maximum
select max(age) as aged from table1;

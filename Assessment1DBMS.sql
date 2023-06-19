create table student(id int,name text ,age text, subject text);
insert into student values (1,'AA','18','english'),(2,'A2','19','Maths'),(3,'A3','18','english');

select * from student;
select * from student order by id desc;

select * from student where subject="english";
select * from student where subject="Maths";

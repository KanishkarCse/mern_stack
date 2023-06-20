--joins
create table students(ID INT PRIMARY KEY, AGE INT ,GENDER VARCHAR(30));
create table staff(staff_ID int primary key,ID INT , staff_AGE INT ,staff_GENDER VARCHAR(30));
insert into students values (1,18,'Male'),(2,18,'Male'),(3,17,'Female'),(4,19,'Female');
insert into staff values (1,2,28,'Male'),(2,1,38,'Male'),(3,1,30,'Female'),(4,3,29,'Female');
--inner join
SELECT staff.staff_ID,students.ID,staff.staff_AGE,staff.staff_gender FROM staff INNER JOIN students ON staff.ID=students.ID;
--outer join
SELECT * FROM students FULL OUTER JOIN staff ON students.ID = staff.ID;
--left join
SELECT * FROM students LEFT JOIN staff ON students.ID = staff.ID;
--right join 
SELECT * FROM students RIGHT JOIN staff ON students.ID = staff.ID;


-- Creating Worker Table
drop table worker;
Create Table Worker(
					worker_id serial not null,
                    first_name varchar(20),
                    last_name varchar(20),
                    salary int,
                    joining_date DATE,
                    Department varchar(20)
);

Insert into worker(first_name, last_name, salary, joining_date, Department)
values ("Monika","Arora",100000,"2014-05-02","HR"),
	   ("Niharika","Verma",80000,"2014-11-06","Admin"),
       ("Vishal","Singhal",300000,"2014-12-02","HR"),
       ("Amitabh","Singh",50000,"2014-06-02","Admin"),
       ("Vivek","Bhati",500000,"2014-11-06","Admin"),
       ("Vipul","Diwan",20000,"2014-11-06","Account"),
       ("Satish","Kumar",75000,"2014-01-20","Account"),
       ("Geetika","Chauhan",90000,"2014-11-04","Admin");
       
Select * from worker;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
Select * from worker
order by first_name, department desc;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
select * from worker
where first_name in ("Vipul", "Satish");

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
select * from worker
where first_name like '%h' and length(first_name) = 6;

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 50000 and 100000. 
select * from worker
where salary between 50000 and 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
select  first_name, 
		last_name, 
		salary, 
		joining_date, 
		department,
		count(*) as Duplicate_Count
 from worker
 group by  first_name, last_name, salary, joining_date, department
 having count(*) > 1;

-- 6. Write an SQL query to show the top 6 records of a table. 
Select * from worker
order by worker_id limit 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them. 
SELECT department, COUNT(*) AS total_people
FROM worker
GROUP BY department
HAVING COUNT(*) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 
SELECT department, COUNT(*) AS total_people
FROM worker
GROUP BY department;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.
select 
		department,
        max(salary) as Max_Salary
from worker
group by department;


-- Creating Student Table
create table Students(
						stdId int,
						stdName varchar(20),
                        Sex varchar(10),
                        Percentage float,
                        Class int,
                        Sec char(10),
                        Stream char(10),
                        DOB date
);

Insert into Students()
values (1001,"Surekha Joshi","Female",82,12,"A","Science","1998-08-03"),
	   (1002,"Maahi Agarwal","Female",56,11,"C","Commerce","2008-11-23"),
       (1003,"Sanam Verma","Male",59,11,"C","Commerce","2006-06-29"),
       (1004,"Ronit Kumar","Male",63,11,"C","Commerce","1997-11-05"),
       (1005,"Dipesh Pulkit","Male",78,11,"B","Science","2003-09-14"),
       (1006,"Jahanvi Puri","Female",60,11,"B","Commerce","2008-11-07"),
       (1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998-03-08'),
	   (1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '2008-11-07'),
	   (1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '1996-10-01'),
	   (1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '2008-11-23'),
	   (1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Science', '1998-03-08'),
	   (1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '1998-06-28'),
	   (1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
	   (1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');
       

-- 1 To display all the records form STUDENT table. SELECT * FROM student ; 
Select * from Students;

-- 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM students ;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM students WHERE 
percentage >= 80; 

-- 4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName, Stream, Percentage
from students
WHERE percentage > 80; 

-- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * FROM students 
WHERE stream = "Science" AND percentage > 75; 
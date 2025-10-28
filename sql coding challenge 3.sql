create database university;
use university;
create table departments (
	department_id int primary key,
    department_name varchar(50),
    status varchar(20)
);
select * from departments;

insert into departments (department_id, department_name, status)
values (1, 'computer science', 'Active'),
	   (2,'Mathematics','Active'),
       (3,'Physics','Inactive'),
       (4,'computer science','Active');
       
create table students (
	student_id int primary key,
    student_name varchar(50),
    course_id varchar(50),
    gpa decimal(3,2)
);
 alter table students add column email varchar(50);   
select * from students;

insert into students (student_id, student_name, course_id, gpa,email)
values (1,'siranjith','cs101',3.5,'siarn123@gmail.com'),
	   (2,'pradiksan','ms201',4.0,'pradik@gmail.com'),
       (3,'alahesh','ps105',2.8, NULL),
       (4,'divya','ms102',3.8,'divyaracks6636@gmail.com'),
       (5,'pranav','cs105',2.6, NULL);

-- Write a SQL query to return distinct department names. --
select distinct department_name from departments;
select distinct department_name from departments where status='Active';

-- Write queries to find students with NULL and NOT NULL emails. --
select student_id,student_name from students where email is NULL;
select student_id,student_name from students where  email is NOT NULL;

-- Write queries using IN, BETWEEN, and NOT BETWEEN operators. --
select student_id,course_id from students where course_id in('cs101','ms201','ps105');
select student_id,course_id from students where gpa between 3.0 AND 5.0;
select student_id,course_id from students where gpa not between 1.5 AND 3.5;




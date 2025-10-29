create database enrollment;
use enrollment;

create table students (
	student_id int primary key,
    student_name varchar(100)
);
select * from students;
insert into students (student_id, student_name)
values (1,'siarnjith'),
       (2,'pradik'),
       (3,'hiran'),
       (4,'kayal'),
       (5,'pawan');
       
create table courses(
      course_id int primary key,
      course_name varchar(100)
);
select * from courses;
insert into courses(course_id, course_name)
values (101,'mathematics'),
       (102,'physics'),
       (103,'chemistry'),
       (104,'biology'),
       (105,'computer science');
       
create table enrollments(
        enrollment_id int primary key,
        student_id int,
        course_id int,
        foreign key (student_id)references students(student_id),
        foreign key(course_id)references courses(course_id)
);
 select *from enrollments;
 insert into enrollments(enrollment_id, student_id, course_id)
 values (1,1,101),
		(2,2,103),
        (3,4,104),
        (4,3,102),
        (5,2,105);
        
-- Write a query joining Students and Courses.--
select s.student_name,c.course_name from students s
inner join enrollments e on s.student_id = e.student_id
inner join courses c on e.course_id = c.course_id;

-- Use LEFT JOIN and RIGHT JOIN between Students and Enrollments --
select s.student_name,c.course_name from students s
left join enrollments e on s.student_id = e.student_id
left join courses c on e.course_id = c.course_id;

-- Combine lists of current and past employees.--
create table current_employee (
     emp_id int,
     emp_name varchar(100)
);
select * from current_employee;
insert into current_employee(emp_id, emp_name)
values (1,'mani'),
	   (2,'vignesh'),
       (3,'shankar');
       
create table past_employee(
       emp_id int,
       emp_name varchar(100)
);
select * from past_employee;
insert into past_employee(emp_id, emp_name)
values (2,'vignesh'),
       (5,'kavitha');

select emp_id,emp_name from current_employee
union
select emp_id,emp_name from past_employee;

select emp_id,emp_name from current_employee
union all
select emp_id,emp_name from past_employee;
       







    
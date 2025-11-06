create database emp_function;
use emp_function;

create table employees (
      employee_id int primary key,
      first_name varchar(50),
      last_name varchar(50),
      hire_date date
);

select * from employees;
insert into employees (employee_id, first_name, last_name, hire_date)
values (1,'sinju','alahesh','2015-03-12'),
	   (2,'pradik','san','2020-05-04'),
       (3,'deiva','dharshini','2017-06-18'),
       (4,'subha','mangala','2016-09-16');
       
-- Write queries using UPPER, LOWER, SUBSTRING, CONCAT.
select upper(first_name) as upper_name from employees;
select lower(last_name) as lower_name from employees;
select employee_id, substring(first_name,1,3) as short_name from employees;
select employee_id,concat(first_name,' ',last_name) as full_name from employees;

-- Use DATE functions like YEAR(), DATEDIFF(), NOW().--
select employee_id,first_name,year(current_date)-year(hire_date) as tenure_year from employees;
select employee_id,first_name,round(datediff(current_date(),hire_date)/365,2) as tenure_year from employees;
select employee_id,first_name,round(datediff(now(),hire_date)/365,1)as tenure_yaer from employees;

-- Write and test a UDF combining FirstName + LastName. --
DELIMITER $$

create function GetFullName(first_name varchar(50), last_name varchar(50))
returns varchar(120)
deterministic
begin
    return CONCAT(first_name, ' ', last_name);
end$$

DELIMITER ;
select GetFullName('Divya', 'Alahesh') as full_name;







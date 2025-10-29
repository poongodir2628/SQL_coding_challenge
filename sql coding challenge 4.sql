create database e_commerce;
use e_commerce;

create table products (
	product_id int primary key,
    product_name varchar(100),
    price decimal(10,2)
);
select * from products;

insert into products (product_id, product_name, price)
values (101,'Laptop',650000),
       (102,'smartwatch',15000),
       (103,'haeadphone',2000),
       (104,'gaming console',25000),
       (105,'tablet',10000),
       (106,'PS5',57000);

create table sales (
	sale_id int primary key,
    product_id int,
    quantity_id int,
    amount decimal(10,2),
    foreign key (product_id) references products(product_id)
);

select * from sales;
insert into sales (sale_id, product_id, quantity_id, amount)
values (1,101,1,650000),
	   (2,102,2,30000),
       (3,103,5,10000),
       (4,104,3,75000),
       (5,105,4,40000),
       (6,106,2,114000);
       
create table employees(
     employee_id int primary key,
     first_name varchar(100),
     last_name varchar(100),
     department varchar(50)
);

select * from employees;
insert into employees (employee_id, first_name, last_name, department)
values (1,'siran','jith','d001'),
	   (2,'pradik','san','doo2'),
       (3,'candy','madhiv','d004'),
       (4,'kayal','sweety','d005'),
       (5,'suhan','sabhnam','d001'),
       (6,'pavan','raj','d003'),
       (7,'subha','mangala','d006'),
       (8,'deiva','dharshini','d007'),
       (9,'alahesh','waran','d003'),
       (10,'divya','alahesh','d004');
       
-- Write a SQL query using ORDER BY and LIMIT. --
select product_name,price from products order by price desc limit 3;

-- Write queries using COUNT, SUM, AVG, MAX, MIN on Sales table. --
select count(product_id) as total_product from sales;
select sum(amount) as total_amount from sales;
select avg(amount) as avg_amount from sales;
select max(amount) as max_amount from sales;
select min(amount) as min_amount from sales;

-- Write a query using GROUP BY and HAVING.--
select department,count(employee_id)as employee_count from employees 
group by department having count(employee_id)>10;


create database bookstore;
use bookstore;
-- Define a primary key for Books(BookID) and a foreign key in Orders(BookID) referencing Books.

create table Books(
       BookID INT PRIMARY KEY,
       Title varchar(100),
       Author varchar(100),
       Price decimal(10,2)
);

create table Orders (
       OrderID INT PRIMARY KEY,
       Orderdate Date,
       BookID INT ,
       Quantity INT,
       Foreign Key (BookID) references Books(BookID)
);
select * from Books;
select * from Orders; 
 -- Add a UNIQUE constraint to the ISBN column in Books.--
 Alter Table Books add column ISBN varchar(20) UNIQUE;
 
 -- Demonstrate DELETE with WHERE clause and TRUNCATE for Orders table. --
 delete from Orders where OrderID=101;
 Truncate table Orders;
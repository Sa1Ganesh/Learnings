-- SELECT name, create_date FROM sys.databases;

-- select * from Sales.Customers;

-- SELECT name FROM sys.databases;

-- use MyDatabase;

--Data Definition Language

-- CREATE TABLE persons (
-- id int NOT NULL,
-- person_name VARCHAR(50) NOT NULL,
-- birth_date DATE,
-- phone VARCHAR(15) NOT NULL,
-- CONSTRAINT pk_persons PRIMARY KEY(id)
-- );

-- DROP TABLE persons;

-- SELECT * FROM persons;


-- ALTER TABLE persons 
-- ADD email VARCHAR(50) NOT NULL  ;

-- ALTER TABLE persons 
-- alter column email VARCHAR(50) NOT NULL ;

-- ALTER TABLE persons
-- DROP column phone;

--Data Manipulation Language

-- INSERT INTO customers
-- (id, first_name,country, score) VALUES 
-- (8,'Anna','USA', NULL),
-- (9,'Sam', null,100);

-- INSERT INTO customers (id, first_name,country, score)
-- select columns from table_name;

-- select * from customers;

-- UPDATE customers  SET
-- score=0
-- WHERE id = 6;

-- UPDATE customers  SET
-- score = 0
-- WHERE score is null;

-- DELETE FROM customers
-- WHERE id > 5;

--WHERE OPERATORS
-- Select * from customers where score >=100 and score <=500;
-- select * from customers where score between 100 and 500;
-- select * from customers where country = 'USA' or country = 'Germany';
-- select * from customers where country in ('USA' , 'Germany');
-- select * from customers where first_name like 'M%' or country like '%S%' ;

--Joins

--select * from customers;
--select * from orders;

-- select * from customers;
-- select * from orders;

-- Get all customers along with their orders but only who have placed an order 
-- select c.id,c.first_name,c.country,o.order_id,o.order_date,o.sales from customers as c inner join orders as o on c.id=o.customer_id;

-- Get all customers along with their orders, including those without the orders
-- select * from customers as c left join orders as o on c.id = o.customer_id;

-- Get all customers along with their orders, including orders without matching customers
-- select * from customers as c right join orders as o on c.id = o.customer_id;
-- select * from orders as o left join customers as c on c.id = o.customer_id;

-- Get all customers and all orders even if there is no match 
-- select * from customers as c full join orders as o on c.id = o.customer_id;

-- select * from customers as c left join orders as o on c.id = o.customer_id union
-- select * from customers as c right join orders as o on c.id = o.customer_id;

-- Get all customers who have not placed orders (Left Anti Join)
--select * from customers as c left join orders as o on c.id = o.customer_id where o.customer_id is null;

-- Get all cutsomers wihtout matching orders (Right Anti Join)
--select * from customers as c right join orders as o on c.id = o.customer_id where c.id is null;

-- Find customers with orders and orders with customers (Full Anti Join)
--select * from customers as c full join orders as o on c.id = o.customer_id where c.id is null or o.customer_id  is null;

-- Get all customers along with their orders but only for customers who have placed an order with using inner join
--select * from customers as c left join orders as o on c.id = o.customer_id where not o.customer_id is null;
--select * from customers as c left join orders as o on c.id = o.customer_id where o.customer_id  is not null;

-- Generate all possible combinations of customers with orders 
--select * from customers  cross join orders ;

--uisng SalesDB,retreive all orders along with related customer ,product and employee details.
--For each order,display order id ,customers name product name ,sales ,price,sales person's name 

-- use SalesDB;
-- select * from sales.Orders;
-- select * from sales.CUSTOMERs;
-- select * from sales.products;
-- select * from sales.employees;


-- select 
-- o.OrderID,o.Sales,c.FirstName,c.LastName, p.Product,p.Price,e.FirstName,e.LastName
-- from sales.orders as o 
-- left join sales.customers as c on o.customerid = c.customerid
-- left join sales.products as p on o.productid = p.ProductID
-- left join sales.Employees as e on o.salespersonid = e.EmployeeID;


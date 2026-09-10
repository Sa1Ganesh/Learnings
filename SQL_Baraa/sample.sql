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

--Sai Ram
-- use SalesDB;
-- SET Operators

-- select * from SALES.customers;
-- select * from sales.employees;

--Combine the data from employees and customers into one table
-- select firstname,lastname from SALES.customers
-- union
-- select firstname,lastname from sales.employees;

-- select firstname,lastname from SALES.customers
-- union all
-- select firstname,lastname from sales.employees;

-- select firstname,lastname from SALES.customers
-- intersect
-- select firstname,lastname from sales.employees;

-- select firstname,lastname from SALES.customers
-- except
-- select firstname,lastname from sales.employees;

-- Functions

--String Functions

--Manipulation
--select firstname,country ,concat(firstname,' ' ,country) as name_country from sales.customers ;
--select lower(firstname) as name,upper(country) as Country from sales.customers;
--select len(firstname) ,len(trim(firstname)) from sales.customers;
--select firstname from sales.customers where firstname != trim(firstname);
--select '123-456-7890' ,replace('123-456-7890' ,'-','');

--select left(firstname,2) from sales.customers;
--select right(firstname,2) from sales.customers;

--select substring(firstname,1,4) as sub_name from sales.customers


--select 3.516,round(3.516,2) as round_2,round(3.516,1) as round_1,round(3.516,0) as round_0 ;
--select -10 ,abs(-10) ;

-- Date and Time Functions

--select orderid,orderdate,shipdate,creationtime from sales.orders;
--select orderid,creationtime,'2025-08-20' Hardcoded ,Getdate() today from sales.orders;

--Part Extraction

--select day(shipdate) as Day ,month(shipdate) as Month, year(shipdate) as Year ,shipdate from sales.orders;
-- select datepart(month,orderdate) from sales.orders;
-- select datepart(mm,orderdate) from sales.orders;
-- select datepart(day,orderdate) from sales.orders;
-- select datepart(year,orderdate) from sales.orders;
-- select datepart(week,orderdate) from sales.orders;
-- select datepart(QUARTER,orderdate) from sales.orders;
-- select datepart(hour,creationtime) from sales.orders;
-- select datepart(mi,creationtime) from sales.orders;

-- Day Month Year Datepart -> Int , DateName -> String , DateTrunc -> Datetime2 , EOMonth-> Date

--select datename(day,creationtime) ,datename(month,creationtime),datename(year,creationtime)  from sales.orders;
--select datename(week,creationtime) from sales.orders;
--select datename(QUARTER,creationtime) from sales.orders;
--select datename(weekday,creationtime) from sales.orders;

--select datetrunc(hour,creationtime) ,datetrunc(MINUTE,creationtime),datetrunc(day,creationtime)  from sales.orders;
--select creationtime ,datetrunc(day,creationtime), datetrunc(month,creationtime) ,datetrunc(year,creationtime)  from sales.orders;
--select creationtime,datetrunc(month,creationtime) as StartOfMonth,eomonth(creationtime) as EndOfMonth from sales.orders;




--Formating

--select creationtime,orderdate,format(orderdate,'dd/MM/yyyy') from sales.orders;
--select orderdate,format(orderdate,'dd/MM') from sales.orders;
--select orderdate,format(orderdate,'ddd/MMM/yyyy') from sales.orders;
--select creationtime,format(creationtime,'dd MMM yyyy HH:mm:ss tt') from sales.orders;


--Select convert(int,'124'),convert (varchar,creationtime),convert(date,creationtime) from sales.orders;
--select cast('124' as int) ,cast(124 as varchar) ,cast(creationtime as date) from sales.orders;
--

--select orderdate,dateadd(year,2,orderdate) from sales.orders;
--select orderdate,dateadd(month,-4,orderdate) from sales.orders;
--select datediff(month,orderdate,shipdate),datediff(day,orderdate,shipdate),datediff(year,orderdate,shipdate) from sales.orders;

--select ISDATE('2025-08-20'),ISDATE('shipdate') from sales.orders;
--select orderdate,isdate(orderdate) ,case when isdate(orderdate) = 1 then cast(orderdate as date) end neworderdate from 
--(select '2025-08-20' as orderdate union select '2025-08-21' union  select '2025-06-23' union select '2025-08' )t

--NULL 
--select * from sales.orders;
--select orderdate ,isnull(ShipAddress,'N/A')  from sales.orders;
--select orderdate,coalesce(shipaddress,NULL,'N/A') from sales.orders;
--select orderdate,coalesce(shipaddress,NULL) from sales.orders;
--select orderid,sales,quantity,sales/nullif(quantity,0) as price from sales.orders order by price;
--select * from sales.customers where score is not null;

-- CASE 

--Searched Case
-- select category ,sum(sales) as total_sales from
-- (select orderid,sales,
-- case  
-- when sales > 50 then 'High'
-- when sales < 20 then 'Low'
-- else 'Medium'
-- end as category
-- from sales.orders
-- )t
-- group by category
-- order by total_sales desc;

--Simple Case
-- select employeeid,firstname,lastname,gender,
-- case gender
-- when 'F' then 'Female'
-- when 'M' then 'Male'
-- else 'not available'
-- end as Gen
-- from sales.employees;

-- select customerid,lastname,score,
-- case 
-- when score is null then 0
-- else score 
-- end scoreclean,
-- avg(case when score is null then 0
-- else score 
-- end) over () avgcustomerclean,
-- avg(score) over() avgcusomer
-- from sales.customers;

-- Aggregate Functions

-- select customerid ,count(*) as count,sum(sales) as sum ,avg(sales) as avg,
-- max(sales) as max,min(sales) as min from sales.orders  group by customerid;

-- Aggregate Window Functions

-- select 
-- orderid,orderdate,
-- productid,
-- sum(sales) over (partition by productid) TotalSales
-- from sales.orders
--group by Productid;

-- select 
-- orderid,
-- productid,
-- sales,
-- sum(sales) over (partition by productid order by sales desc) 
-- TotalSalesbyproduc
-- ,sum(sales) over () totalsales
-- ,sum(sales) over (partition by productid,orderstatus) 
-- from sales.orders
-- --group by Productid
-- ;

-- select 
-- orderid,
-- productid,
-- sales,
-- rank () over (order by sales desc) as rank,
-- dense_rank () over (order by sales desc) as denserank
-- ,rank() over(partition by productid order by sales desc) as rankp
-- from sales.orders;

-- select orderid,orderdate,orderstatus,sales,
-- sum(sales) over(partition by orderstatus order by orderdate
-- rows between unbounded preceding and current row) TotalSales -- default frame
-- from sales.orders; 

-- select customerid,
-- sum(sales) as TotalSales,
-- rank() over(order by sum(sales) desc) RankC
-- from sales.orders
-- group by customerid; 

-- select 'Sai Ram'

--Aggregate window functions

--count(all_data_type) over()  --counts non Null value in the column

--select * from sales.orders;
--select count(*),count(shipaddress)  from sales.orders;
-- select orderid,orderdate,customerid,count(*) over() totalorders
-- ,count(*) over (partition by customerid order by customerid) customers
-- ,count(shipaddress) over (partition by customerid ) sa
-- from sales.orders;

-- select * from 
-- (
-- select
-- orderid,
-- count(1) over() totalorders,
-- count(*) over (partition by orderid order by orderid) customers
-- from sales.OrdersArchive)t
-- where customers>1
-- ;

--SUM(NUMBER) OVER(parition by )	
-- select orderid,productid,sales,
-- sum(sales) over ()  TotalSales,
-- sum(sales) over (partition by productid) ProductSales,
-- sum(sales) over (partition by productid order by orderid) ProducSales
-- from Sales.orders;

-- select orderid,productid,sales,
-- sum(sales) over ()  TotalSales,
-- round(cast(sales as float)/sum(sales) over () * 100 ,2) cent
-- from Sales.orders;


-- Avg(number) over()
-- select customerid,lastname,score,
-- avg(score) over ()  avgSales,
-- avg(score) over (partition by customerid) prdavg,
-- avg(coalesce(score,0)) over (partition by customerid) prdavg
-- from Sales.Customers;

-- Min / Max(number) over() 
-- select orderid,productid,sales,
-- Min(sales) over (partition by productid) as Min,
-- Max(sales) over (partition by productid) as Max
-- from sales.orders;

-- select orderid,sales from (select orderid,sales,
-- Min(sales) over (partition by productid) as Min,
-- Max(sales) over (partition by productid) as Max
-- from sales.orders)t where sales = Max;

-- Running Totals
--Sum (Sales) Over (order by month) 
--default is (rows between unbounded preceding and current row)

-- select productid,orderdate,sales,
-- avg(sales) over (partition by productid) as AvgSales,
-- avg(sales) over (partition by productid order by productid ) as MAvgSales,
-- avg(sales) over (partition by productid order by orderdate) as MOVAvgSales
-- from sales.orders


-- Rolling Totals
--Sum (Sales) Over (order by month rows between 2 preceding and current row) 
-- select productid,orderdate,sales,
-- sum(sales) over (partition by productid) as AvgSales,
-- sum(sales) over (partition by productid order by orderdate) as MovAvgSales,
-- sum(sales) over (partition by productid order by orderdate 
-- rows between 2 preceding and current row) as ROlAvgSales
-- from sales.orders

-- Value Window Functions
--RANK () over ( order by ) -- ranks with gaps
-- select orderid,sales,
-- rank() over(order by sales desc) as ranks,
-- row_number() over(order by sales desc) as rnum
-- from sales.orders;


-- Row_Number() over(order by ) -- unique row number
-- select orderid,sales,
-- row_number() over(order by sales desc)
-- from sales.orders;

--DenseRANK () over ( order by ) -- ranks without gaps
-- select orderid,sales,
-- row_number() over(order by sales desc) as rnum,
-- rank() over(order by sales desc) as ranks,
-- dense_rank() over(order by sales desc) as dr
-- from sales.orders;

-- For duplicates
-- select row_number() over(partition by orderid order by creationtime) as rnum,*
-- from sales.OrdersArchive;

--NTile (number ) over (order by )
-- select orderid,sales,
-- ntile (2) over (order by sales desc) 
-- ,ntile (3) over (order by sales desc) 
-- from sales.OrdersArchive;

-- select *,case buckets
-- when 1 then 'High'
-- when 2 then 'Medium'
-- when 3 then 'Low'
-- else 'n'
-- end as  'groups' from
-- (
-- select orderid,sales
-- ,ntile (3) over (order by sales desc) buckets
-- from sales.Orders
-- ) t ;

--Percentage
-- Cume_Dist ( ) over (order by ) p/r
-- select product,price,
-- Cume_Dist () over (order by price desc) distrank
-- from sales.products;

-- Percent_Rank () over (order by ) p-1/r-1
-- select product,price,
-- percent_rank () over (order by price desc) distrank
-- from sales.products;

-- Value Window Functions
--lead,lag,
-- Lead(anydatatype,offset,default	) over (prder by )

-- select orderid,sales,orderdate
-- ,LEAD (sales,1,0) over (order by orderdate) as lead
-- ,LAG (sales,1,0) over (order by orderdate) as lag
-- from sales.orders;


-- Value Window Functions
--First_Value () over (order by) 
--default rows between unbounded preceding and current row

--Last_value () over (order by) 

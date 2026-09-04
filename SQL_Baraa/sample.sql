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
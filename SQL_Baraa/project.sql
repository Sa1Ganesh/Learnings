-- DateWareHouse Project

-- use master;
-- create database DataWarehouse;
-- use datawarehouse;

--create schema bronze;
--go
--create schema silver;
--go
--create schema gold;
--go


-- Bronze Layer


-- if object_id('bronze.crm_cust_info','U') is not null 
-- drop table bronze.crm_cust_info;

-- create table bronze.crm_cust_info(
-- cst_id int,
-- cst_key Nvarchar(50),
-- cst_firstname Nvarchar(50),
-- cst_lastname Nvarchar(50),
-- cst_material_status Nvarchar(50),
-- cst_gender Nvarchar(50),
-- cst_create_date Date
-- );

-- if object_id('bronze.crm_prd_info','U') is not null 
-- drop table bronze.crm_prd_info;

-- create table bronze.crm_prd_info (
-- prd_id int,
-- prd_key nvarchar(50),
-- prd_nm nvarchar(50),
-- prd_cost int,
-- prd_line nvarchar(50),
-- prd_start_dt datetime,
-- prd_end_dt datetime
-- );


-- if object_id('bronze.crm_sales_details','U') is not null 
--   drop table bronze.crm_sales_details;

--   create table bronze.crm_sales_details (
--   sls_ord_num Nvarchar(50),
--   sls_prd_key Nvarchar(50),
--   sls_cust_id int,
--   sls_order_id int,
--   sls_ship_dt int,
--   sls_due_dt int,
--   sls_sales int,
--   sls_quantity int,
--   sls_price int
--   );

-- if object_id('bronze.erp_loc_a101','U') is not null 
-- drop table bronze.erp_loc_a101

-- create table bronze.erp_loc_a101 (
-- cid nvarchar(50),
-- cntry nvarchar(50)
-- );

-- if object_id('bronze.erp_cust_az12','U') is not null 
-- drop table bronze.erp_cust_az12;

-- create table bronze.erp_cust_az12(
-- cid nvarchar(50),
-- bdate date,
-- gen nvarchar(10)
-- );

-- if object_id('bronze.erp_px_cat_g1v2','U') is not null 
-- drop table bronze.erp_px_cat_g1v2;

-- create table bronze.erp_px_cat_g1v2 (
-- id nvarchar(50),
-- cat nvarchar(50),
-- subcat nvarchar(50),
-- maintenance nvarchar(50)
-- );


-- truncate table bronze.crm_cust_info;

-- bulk insert bronze.crm_cust_info
-- from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
-- with (
-- firstrow = 2,
-- fieldterminator = ',',
-- tablock
-- );

-- select * from bronze.crm_cust_info;
-- select count(*) from bronze.crm_cust_info;


-- truncate table bronze.crm_prd_info;

-- bulk insert bronze.crm_prd_info
-- from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
-- with (
-- firstrow = 2,
-- fieldterminator = ',',
-- tablock
-- );

-- select * from bronze.crm_prd_info;
-- select count(*) from bronze.crm_prd_info;


-- truncate table bronze.crm_sales_details;

-- bulk insert bronze.crm_sales_details
-- from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
-- with (
-- firstrow = 2,
-- fieldterminator = ',',
-- tablock
-- );

--select * from bronze.crm_sales_details;
--select count(*) from bronze.crm_sales_details;



--  truncate table bronze.erp_loc_a101;

--  bulk insert bronze.erp_loc_a101
--  from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
--  with (
--  firstrow = 2,
--  fieldterminator = ',',
--  tablock
--  );

--  select * from bronze.erp_loc_a101;
--  select count(*) from bronze.erp_loc_a101;


--  truncate table bronze.erp_cust_az12;

--  bulk insert bronze.erp_cust_az12
--  from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
--  with (
--  firstrow = 2,
--  fieldterminator = ',',
--  tablock
--  );


--  select * from bronze.erp_cust_az12;
--  select count(*) from bronze.erp_cust_az12;


--  truncate table bronze.erp_px_cat_g1v2;

--  bulk insert bronze.erp_px_cat_g1v2
--  from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
--  with (
--  firstrow = 2,
--  fieldterminator = ',',
--  tablock
--  );

--  select * from bronze.erp_px_cat_g1v2;
--  select count(*) from bronze.erp_px_cat_g1v2;





--Stored procedure for Bronze Layer

-- create or alter procedure bronze.load_bronze as 
-- begin

--  declare @start_time datetime,@end_time datetime;

--   begin try
--     set @start_time =getdate();
-- 	print '======================================';
-- 	print 'Loading Bronze Layer';
-- 	print '======================================';

	

-- 	Print '****************************************';
-- 	Print 'Loading CRM Tables';
-- 	Print '****************************************';

-- 	set @start_time =getdate();

-- 	print 'Truncating Table : bronze.crm_cust_info';
-- 	truncate table bronze.crm_cust_info;

-- 	print 'Inserting Data into Table : bronze.crm_cust_info';
-- 	  bulk insert bronze.crm_cust_info
-- 	  from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
-- 	  with (
-- 	  firstrow = 2,
-- 	  fieldterminator = ',',
-- 	  tablock
-- 	  );

--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

--  Print '****************************************';

--  set @start_time =getdate();

-- 	print 'Truncating Table : bronze.crm_prd_info';
-- 	  truncate table bronze.crm_prd_info;

-- 	print 'Inserting Data into Table : bronze.crm_prd_info';
-- 	  bulk insert bronze.crm_prd_info
-- 	  from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
-- 	  with (
-- 	  firstrow = 2,
-- 	  fieldterminator = ',',
-- 	  tablock
-- 	  );

--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

--  Print '****************************************'; 

--  set @start_time =getdate();

-- 	print 'Truncating Table : bronze.crm_sales_details';
-- 	truncate table bronze.crm_sales_details;

-- 	print 'Inserting Data into Table : bronze.crm_sales_details';
-- 	  bulk insert bronze.crm_sales_details
-- 	  from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
-- 	  with (
-- 	  firstrow = 2,
-- 	  fieldterminator = ',',
-- 	  tablock
-- 	  );


--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';



-- 	Print '****************************************';
-- 	Print 'Loading ERP Tables';
-- 	Print '****************************************';



--  set @start_time =getdate();
-- 	print 'Truncating Table : bronze.erp_loc_a101';
-- 	   truncate table bronze.erp_loc_a101;

-- 	print 'Inserting Data into Table : bronze.erp_loc_a101';
-- 	   bulk insert bronze.erp_loc_a101
-- 	   from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
-- 	   with (
-- 	   firstrow = 2,
-- 	   fieldterminator = ',',
-- 	   tablock
-- 	   );

-- set @end_time =getdate();

-- print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

-- Print '****************************************';

--  set @start_time =getdate();

-- 	print 'Truncating Table : bronze.erp_cust_az12';
-- 	   truncate table bronze.erp_cust_az12;

-- 	print 'Inserting Data into Table : bronze.erp_cust_az12';
-- 	   bulk insert bronze.erp_cust_az12
-- 	   from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
-- 	   with (
-- 	   firstrow = 2,
-- 	   fieldterminator = ',',
-- 	   tablock
-- 	   );

 
-- set @end_time =getdate();

-- print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

-- Print '****************************************';

--  set @start_time =getdate();

-- 	print 'Truncating Table : bronze.erp_px_cat_g1v2';
-- 	   truncate table bronze.erp_px_cat_g1v2;

-- 	print 'Inserting Data into Table : bronze.erp_px_cat_g1v2';
-- 	   bulk insert bronze.erp_px_cat_g1v2
-- 	   from 'C:\Users\ganesh\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
-- 	   with (
-- 	   firstrow = 2,
-- 	   fieldterminator = ',',
-- 	   tablock
-- 	   );

--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

--  Print '****************************************';

--  set @end_time =getdate();

--  Print '****************************************';
--  Print 'Loading Bronze Layer is Completed';
--  Print '****************************************';

--  print'>> Total Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';


--     end try

-- 	begin catch

-- 	print '=================================================';
-- 	print 'Error Occured During Loading Bronze Layer';
-- 	print 'Error Message' + Error_Message();
-- 	print 'Error Message' + Cast(Error_Number() as Nvarchar);
-- 	print 'Error Message' + Cast(Error_State() as Nvarchar);
-- 	print 'Error Occured During Loading Bronze Layer';
-- 	print '=================================================';

-- 	end catch

-- end;







-- exec bronze.load_bronze;
--drop procedure bronze.load_bronze;


--SQL Queries for Silver Layer


-- use datawarehouse;

-- select top 100 * from bronze.crm_sales_details;
-- select top 100 * from bronze.crm_cust_info;
-- select top 100 * from bronze.crm_prd_info;


-- select top 100 * from bronze.crm_cust_info;
-- select top 100 * from bronze.erp_cust_az12;
-- select top 100 * from bronze.erp_loc_a101;

-- select top 100 * from bronze.crm_prd_info;
-- select top 100 * from bronze.erp_px_cat_g1v2;



-- if object_id('silver.crm_cust_info','U') is not null 
-- drop table silver.crm_cust_info;

-- create table silver.crm_cust_info(
-- cst_id int,
-- cst_key Nvarchar(50),
-- cst_firstname Nvarchar(50),
-- cst_lastname Nvarchar(50),
-- cst_material_status Nvarchar(50),
-- cst_gender Nvarchar(50),
-- cst_create_date Date,
-- dwh_create_date Datetime2 default getdate()
--);


-- if object_id('silver.crm_prd_info','U') is not null 
-- drop table silver.crm_prd_info;

-- create table silver.crm_prd_info (
-- prd_id int,
-- prd_key nvarchar(50),
-- prd_nm nvarchar(50),
-- prd_cost int,
-- prd_line nvarchar(50),
-- prd_start_dt datetime,
-- prd_end_dt datetime,
-- dwh_create_date Datetime2 default getdate()
--);


-- if object_id('silver.crm_sales_details','U') is not null 
--   drop table silver.crm_sales_details;

--   create table silver.crm_sales_details (
--   sls_ord_num Nvarchar(50),
--   sls_prd_key Nvarchar(50),
--   sls_cust_id int,
--   sls_order_dt int,
--   sls_ship_dt int,
--   sls_due_dt int,
--   sls_sales int,
--   sls_quantity int,
--   sls_price int,
--   dwh_create_date Datetime2 default getdate()
--);


-- if object_id('silver.erp_loc_a101','U') is not null 
-- drop table silver.erp_loc_a101

-- create table silver.erp_loc_a101 (
-- cid nvarchar(50),
-- cntry nvarchar(50),
-- dwh_create_date Datetime2 default getdate()
--);


-- if object_id('silver.erp_cust_az12','U') is not null 
-- drop table silver.erp_cust_az12;

-- create table silver.erp_cust_az12(
-- cid nvarchar(50),
-- bdate date,
-- gen nvarchar(10),
-- dwh_create_date Datetime2 default getdate()
--);


-- if object_id('silver.erp_px_cat_g1v2','U') is not null 
-- drop table silver.erp_px_cat_g1v2;

-- create table silver.erp_px_cat_g1v2 (
-- id nvarchar(50),
-- cat nvarchar(50),
-- subcat nvarchar(50),
-- maintenance nvarchar(50),
-- dwh_create_date Datetime2 default getdate()
--);


-- Table silver.crm_cust_info

-- Check for Nulls and Duplicates in primary key for bronze layer

-- select cst_id ,count(*) from bronze.crm_cust_info
-- group by cst_id having count(*)>1 or cst_id is null;

-- select * from (
-- select *, row_number() over (partition by cst_id order by cst_create_date desc) as flag_last 
-- from bronze.crm_cust_info 
-- )t where flag_last != 1;


-- Check for Unwanted Spaces

-- select cst_firstname from bronze.crm_cust_info 
-- where cst_firstname != trim(cst_firstname) ;

-- select cst_lastname from bronze.crm_cust_info 
-- where cst_lastname != trim(cst_lastname) ;

-- select cst_gender from bronze.crm_cust_info 
-- where cst_gender  != trim(cst_gender) ;


-- select 
-- cst_id,
-- cst_key,
-- trim(cst_firstname) as cst_firstname,
-- trim(cst_lastname) as cst_lastname,
-- cst_material_status,
-- cst_gender,
-- cst_create_date
-- from (
-- select *, row_number() over (partition by cst_id order by cst_create_date desc) as flag_last 
-- from bronze.crm_cust_info 
-- )t where flag_last = 1;


-- -- Data Standardization and consistency
-- select distinct cst_gender from bronze.crm_cust_info;
-- select distinct cst_material_status from bronze.crm_cust_info;


-- select 
-- cst_id,
-- cst_key,
-- trim(cst_firstname) as cst_firstname,
-- trim(cst_lastname) as cst_lastname,
-- cst_material_status,
-- case when upper(trim(cst_material_status)) = 'M' then 'Married'
-- when upper(trim(cst_material_status)) = 'S' then 'Single'
-- else 'n/a' end  cst_material_status,
-- cst_gender,
-- case when upper(trim(cst_gender)) = 'M' then 'Male'
-- when upper(trim(cst_gender)) = 'F' then 'Female'
-- else 'n/a' end  cst_gender,
-- cst_create_date
-- from (
-- select *, row_number() over (partition by cst_id order by cst_create_date desc) as flag_last 
-- from bronze.crm_cust_info 
-- )t where flag_last = 1;

-- use DataWarehouse;
-- select * from silver.crm_cust_info ;
-- -- truncate table silver.crm_cust_info ;

--   insert into silver.crm_cust_info
--   (
--   cst_id,
--   cst_key,    
--   cst_firstname,
--   cst_lastname,
--   cst_material_status,
--   cst_gender,
--   cst_create_date
--   )
--   select 
--   cst_id,
--   cst_key,
--   trim(cst_firstname) as cst_firstname,
--   trim(cst_lastname) as cst_lastname,
--   case when upper(trim(cst_material_status)) = 'M' then 'Married'
--   when upper(trim(cst_material_status)) = 'S' then 'Single'
--   else 'n/a' end  cst_material_status,
--   case when upper(trim(cst_gender)) = 'M' then 'Male'
--   when upper(trim(cst_gender)) = 'F' then 'Female'
--   else 'n/a' end as cst_gender,
--   cst_create_date
--   from (
--   select *, row_number() over (partition by cst_id order by cst_create_date desc) as flag_last 
--   from bronze.crm_cust_info where cst_id is not null
--   )t where flag_last = 1;

--   select count(*) from silver.crm_cust_info;


-- Check for Nulls and Duplicates in primary key for Silver Layer

-- select cst_id ,count(*) from silver.crm_cust_info
-- group by cst_id having count(*)>1 or cst_id is null;

-- select * from (
-- select *, row_number() over (partition by cst_id order by cst_create_date desc) as flag_last 
-- from silver.crm_cust_info 
-- )t where flag_last != 1;


-- Check for Unwanted Spaces

-- select cst_firstname from silver.crm_cust_info 
-- where cst_firstname != trim(cst_firstname) ;

-- select cst_lastname from silver.crm_cust_info 
-- where cst_lastname != trim(cst_lastname) ;

-- select cst_gender from silver.crm_cust_info 
-- where cst_gender  != trim(cst_gender) ;

-- select distinct  cst_material_status from  silver.crm_cust_info ;
-- select distinct  cst_gender from  silver.crm_cust_info ;


--Table silver.crm_prd_info

-- select * from bronze.crm_prd_info;

-- select 
-- prd_id,
-- prd_key,
-- prd_nm,
-- prd_cost,
-- prd_line,
-- prd_start_dt,
-- prd_end_dt
-- from bronze.crm_prd_info;


-- select prd_id ,count(*) from bronze.crm_prd_info
-- group by prd_id having count(*)>1 or prd_id is null;

-- select 
-- prd_id,
-- prd_key,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- prd_nm,
-- prd_cost,
-- prd_line,
-- prd_start_dt,
-- prd_end_dt
-- from bronze.crm_prd_info;

-- select distinct id from bronze.erp_px_cat_g1v2;

-- select 
-- prd_id,
-- prd_key,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- substring(prd_key,7,len(prd_key)) as prd_key,
-- prd_nm,
-- prd_cost,
-- prd_line,
-- prd_start_dt,
-- prd_end_dt
-- from bronze.crm_prd_info
-- where substring(prd_key,7,len(prd_key))  not in
-- (select  sls_prd_key from bronze.crm_sales_details);

-- select sls_prd_key from bronze.crm_sales_details;

-- select 
-- prd_id,
-- prd_key,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- substring(prd_key,7,len(prd_key)) as prd_key,
-- prd_nm,
-- prd_cost,
-- prd_line,
-- prd_start_dt,
-- prd_end_dt
-- from bronze.crm_prd_info
-- where substring(prd_key,7,len(prd_key))  in
-- (select sls_prd_key from bronze.crm_sales_details);



-- select prd_nm from bronze.crm_prd_info where prd_nm != trim(prd_nm) ;
-- select prd_cost from bronze.crm_prd_info where prd_cost < 0 or prd_cost is null;
-- select distinct prd_line from bronze.crm_prd_info ;
--Check for invalid dates in prd_start_dt and prd_end_dt columns
-- select * from bronze.crm_prd_info where prd_end_dt < prd_start_dt;

-- select 
-- prd_id,
-- prd_key,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- substring(prd_key,7,len(prd_key)) as prd_key,
-- prd_nm,
-- isnull(prd_cost,0) as prd_cost,
-- case upper(trim(prd_line)) 
-- when 'M' then 'Mountain'
-- when 'R' then 'Road'
-- when 'T' then 'Touring'
-- when 'S' then 'Other Sales'
-- else 'n/a' end as prd_line,
-- prd_start_dt,
-- prd_end_dt
-- from bronze.crm_prd_info;


-- select 
-- prd_id,
-- prd_key,
-- prd_nm,
-- prd_start_dt,
-- prd_end_dt,
-- lead(prd_start_dt) over (partition by prd_key order by prd_start_dt) -1 as prd_end_dt_test,
-- from bronze.crm_prd_info
-- where prd_key in ('AC-HE-HL-U509-R','AC-HE-HL-U509');

-- select 
-- prd_id,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- substring(prd_key,7,len(prd_key)) as prd_key,
-- prd_nm,
-- isnull(prd_cost,0) as prd_cost,
-- case upper(trim(prd_line)) 
-- when 'M' then 'Mountain'
-- when 'R' then 'Road'
-- when 'T' then 'Touring'
-- when 'S' then 'Other Sales'
-- else 'n/a' end as prd_line,
-- cast (prd_start_dt as date) as prd_start_dt,
-- cast (lead(prd_start_dt) over (partition by prd_key order by prd_start_dt) -1 as date) as prd_end_dt_test
-- from bronze.crm_prd_info;

--Update the DDL

-- if object_id('silver.crm_prd_info','U') is not null 
-- drop table silver.crm_prd_info;

-- create table silver.crm_prd_info (
-- prd_id int,
-- cat_id nvarchar(50),
-- prd_key nvarchar(50),
-- prd_nm nvarchar(50),
-- prd_cost int,
-- prd_line nvarchar(50),
-- prd_start_dt datetime,
-- prd_end_dt datetime,
-- dwh_create_date Datetime2 default getdate() );

-- insert into silver.crm_prd_info(
-- prd_id, 
-- cat_id,
-- prd_key,
-- prd_nm,
-- prd_cost,
-- prd_line,
-- prd_start_dt,
-- prd_end_dt
-- )
-- select 
-- prd_id,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- substring(prd_key,7,len(prd_key)) as prd_key,
-- prd_nm,
-- isnull(prd_cost,0) as prd_cost,
-- prd_line,
-- case upper(trim(prd_line)) 
-- when 'M' then 'Mountain'
-- when 'R' then 'Road'
-- when 'T' then 'Touring'
-- when 'S' then 'Other Sales'
-- else 'n/a' end as prd_line,
-- cast (prd_start_dt as date) as prd_start_dt,
-- cast (lead(prd_start_dt) over (partition by prd_key order by prd_start_dt) -1 as date) as prd_end_dt_test
-- from bronze.crm_prd_info;

-- select count(*) from silver.crm_prd_info;
-- select * from silver.crm_prd_info;
-- select prd_nm from silver.crm_prd_info where prd_nm != trim(prd_nm) ;
-- select prd_cost from silver.crm_prd_info where prd_cost < 0 or prd_cost is null; select distinct prd_line from silver.crm_prd_info ;
-- select * from silver.crm_prd_info where prd_end_dt < prd_start_dt;


--Table silver.crm_sales_details

-- select * from bronze.crm_sales_details;

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from bronze.crm_sales_details
-- where sls_ord_num != trim(sls_ord_num) ;

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from bronze.crm_sales_details
-- where sls_prd_key not in (select prd_key from silver.crm_prd_info) ;

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from bronze.crm_sales_details
-- where sls_cust_id not in (select cst_id from silver.crm_cust_info) ;

-- select sls_order_id from bronze.crm_sales_details where sls_order_id <= 0; -- sls_order_id in bronze layer but should be sls_order_dt

-- select nullif(sls_order_id ,0) sls_order_dt from bronze.crm_sales_details where sls_order_id <= 0;
-- select 
-- nullif(sls_order_id ,0) sls_order_dt
-- from bronze.crm_sales_details
-- where sls_order_id <= 0 
-- or len(sls_order_id) != 8 
-- or sls_order_id > 20500101 
-- or sls_order_id < 19000101;

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- case when sls_order_id = 0 or len(sls_order_id) != 8 then null
-- else cast(cast(sls_order_id as varchar) as date) 
-- end as sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from bronze.crm_sales_details;


-- select nullif(sls_ship_dt ,0) sls_ship_dt from bronze.crm_sales_details where sls_ship_dt <= 0;
-- select nullif (sls_ship_dt ,0) sls_ship_dt
-- from bronze.crm_sales_details
-- where sls_ship_dt <= 0 
-- or len(sls_ship_dt) != 8 
-- or sls_ship_dt > 20500101 
-- or sls_ship_dt < 19000101;


-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- case 
--  when sls_order_id = 0 or len(sls_order_id) != 8 then null
--  else cast(cast(sls_order_id as varchar) as date) 
-- end as sls_order_dt,
-- case
--  when sls_ship_dt = 0 or len(sls_ship_dt) != 8 then null
--  else cast(cast(sls_ship_dt as varchar) as date) 
-- end as sls_ship_dt,
-- case
--  when sls_due_dt = 0 or len(sls_due_dt) != 8 then null
--  else cast(cast(sls_due_dt as varchar) as date) 
-- end as sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from bronze.crm_sales_details;


-- select * from bronze.crm_sales_details where sls_order_id > sls_ship_dt or sls_order_id > sls_due_dt ;

-- select distinct
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from bronze.crm_sales_details
-- where sls_sales != sls_quantity * sls_price
-- or sls_sales is null or sls_quantity is null or sls_price is null
-- or sls_sales <= 0 or sls_quantity <=0 or sls_price <= 0
-- order by sls_sales,sls_quantity,sls_price;


-- select distinct
-- sls_sales,
-- sls_quantity,
-- sls_price as old_sls_price,
-- case when sls_sales is null or sls_sales<=0 or sls_sales != sls_quantity * abs(sls_price )
-- then sls_quantity * abs(sls_price) 
-- else sls_sales end as sls_sales
-- from bronze.crm_sales_details
-- where sls_sales != sls_quantity * sls_price
-- or sls_sales is null or sls_quantity is null or sls_price is null
-- or sls_sales <= 0 or sls_quantity <=0 or sls_price <= 0;


-- select distinct
-- sls_sales as old_sls_sales,
-- sls_quantity,
-- sls_price as old_sls_price,
-- case 
--  when sls_sales is null or sls_sales<=0 or sls_sales != sls_quantity * abs(sls_price )
--  then sls_quantity * abs(sls_price) 
-- else sls_sales end as sls_sales,
-- case 
-- when sls_price is null or sls_price<=0 
-- then sls_sales / nullif(sls_quantity, 0) 
-- else sls_price end as sls_price
-- from bronze.crm_sales_details
-- where sls_sales != sls_quantity * sls_price
-- or sls_sales is null or sls_quantity is null or sls_price is null
-- or sls_sales <= 0 or sls_quantity <=0 or sls_price <= 0
-- order by sls_sales,sls_quantity,sls_price;



-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- case 
--  when sls_order_id = 0 or len(sls_order_id) != 8 then null
--  else cast(cast(sls_order_id as varchar) as date) 
-- end as sls_order_dt,
-- case
--  when sls_ship_dt = 0 or len(sls_ship_dt) != 8 then null
--  else cast(cast(sls_ship_dt as varchar) as date) 
-- end as sls_ship_dt,
-- case
--  when sls_due_dt = 0 or len(sls_due_dt) != 8 then null
--  else cast(cast(sls_due_dt as varchar) as date) 
-- end as sls_due_dt,
-- case
--  when sls_sales is null or sls_sales<=0 or sls_sales != sls_quantity * abs(sls_price )
--  then sls_quantity * abs(sls_price) 
-- else sls_sales end as sls_sales,
-- sls_quantity,
-- case 
--  when sls_price is null or sls_price<=0 
--  then sls_sales / nullif(sls_quantity, 0) 
-- else sls_price end as sls_price
-- from bronze.crm_sales_details;

--Update the DDL

-- if object_id('silver.crm_sales_details','U') is not null 
--   drop table silver.crm_sales_details;

--   create table silver.crm_sales_details (
--   sls_ord_num Nvarchar(50),
--   sls_prd_key Nvarchar(50),
--   sls_cust_id int,
--   sls_order_dt date,
--   sls_ship_dt date,
--   sls_due_dt date,
--   sls_sales int,
--   sls_quantity int,
--   sls_price int,
--   dwh_create_date Datetime2 default getdate()
-- );



-- insert into silver.crm_sales_details(
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price    
-- )
-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- case 
--  when sls_order_id = 0 or len(sls_order_id) != 8 then null
--  else cast(cast(sls_order_id as varchar) as date) 
-- end as sls_order_dt,
-- case
--  when sls_ship_dt = 0 or len(sls_ship_dt) != 8 then null
--  else cast(cast(sls_ship_dt as varchar) as date) 
-- end as sls_ship_dt,
-- case
--  when sls_due_dt = 0 or len(sls_due_dt) != 8 then null
--  else cast(cast(sls_due_dt as varchar) as date) 
-- end as sls_due_dt,
-- case 
--  when sls_sales is null or sls_sales<=0 or sls_sales != sls_quantity * abs(sls_price )
--  then sls_quantity * abs(sls_price) 
-- else sls_sales end as sls_sales,
-- sls_quantity,
-- case 
--  when sls_price is null or sls_price<=0 
--  then sls_sales / nullif(sls_quantity, 0) 
-- else sls_price end as sls_price
-- from bronze.crm_sales_details;


--Checks for Silver Layer after loading the data

-- select * from silver.crm_sales_details;

-- select distinct
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from silver.crm_sales_details
-- where sls_sales != sls_quantity * sls_price
-- or sls_sales is null or sls_quantity is null or sls_price is null
-- or sls_sales <= 0 or sls_quantity <=0 or sls_price <= 0
-- order by sls_sales,sls_quantity,sls_price;


-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from silver.crm_sales_details
-- where sls_ord_num != trim(sls_ord_num) ;

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from silver.crm_sales_details
-- where sls_prd_key not in (select prd_key from silver.crm_prd_info) ;

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price
-- from silver.crm_sales_details
-- where sls_cust_id not in (select cst_id from silver.crm_cust_info) ;

-- select * from silver.crm_sales_details 
-- where sls_order_dt > sls_ship_dt or sls_order_dt > sls_due_dt;



--Table erp_cust_az12


-- select * from bronze.erp_cust_az12;
-- select * from silver.crm_cust_info;

-- select 
-- cid,
-- bdate,
-- gen
-- from bronze.erp_cust_az12;

-- select 
-- cid,
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,
-- bdate,
-- gen
-- from bronze.erp_cust_az12;

-- select 
-- cid,
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,
-- bdate,
-- gen
-- from bronze.erp_cust_az12
-- where case when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end not in (select distinct cst_key from silver.crm_cust_info);


-- select 
-- cid,
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,
-- bdate,
-- gen
-- from bronze.erp_cust_az12
-- where cid not in (select cst_key from silver.crm_cust_info);


-- select 
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,
-- bdate,
-- gen
-- from bronze.erp_cust_az12;

-- select distinct
-- bdate from bronze.erp_cust_az12 
-- where bdate < '1942-01-01' or bdate > getdate() ;

-- select 
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,
-- case 
--  when bdate > getdate() then null
--  else bdate 
-- end as bdate,
-- gen
-- from bronze.erp_cust_az12;
----where bdate is null;

-- select distinct gen from bronze.erp_cust_az12;

-- select distinct gen ,
-- case 
--   when upper(trim(gen)) in ('M','MALE') then 'Male'
--   when upper(trim(gen)) in ('F','FEMALE') then 'Female' 
--   else 'n/a'
-- end as gen   
-- from bronze.erp_cust_az12;

-- select 
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,
-- case 
--  when bdate > getdate() then null
--  else bdate 
-- end as bdate,
-- case 
--   when upper(trim(gen)) in ('M','MALE') then 'Male'
--   when upper(trim(gen)) in ('F','FEMALE') then 'Female' 
--   else 'n/a'
-- end as gen   
-- from bronze.erp_cust_az12;

-- insert into silver.erp_cust_az12
-- (
-- cid,
-- bdate,
-- gen
-- )
-- select 
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,

-- case 
--  when bdate > getdate() then null
--  else bdate 
-- end as bdate,

-- case 
--   when upper(trim(gen)) in ('M','MALE') then 'Male'
--   when upper(trim(gen)) in ('F','FEMALE') then 'Female' 
--   else 'n/a'
-- end as gen   
-- from bronze.erp_cust_az12;

--Checks for Silver Layer after loading erp_cust_az12

-- select  *   from silver.erp_cust_az12;
-- select distinct gen from silver.erp_cust_az12;
-- select distinct bdate from silver.erp_cust_az12  
-- where bdate < '1942-01-01' or bdate > getdate() ;


--Table erp_loc_a101

-- select * from bronze.erp_loc_a101;
-- select 
-- cid,
-- cntry from bronze.erp_loc_a101;

-- select cst_key from silver.crm_cust_info;

-- select 
-- replace (cid,'-','') as cid,
-- cntry
-- from bronze.erp_loc_a101;

-- select 
-- replace (cid,'-','') as cid,
-- cntry
-- from bronze.erp_loc_a101
-- WHERE replace (cid,'-','') not in 
-- (select cst_key from silver.crm_cust_info);

-- select distinct cntry from bronze.erp_loc_a101 order by cntry;

-- select 
-- distinct cntry as old,
-- case 
--  when trim(cntry) ='DE' then 'Germany'
--  when trim(cntry) in ('US','USA') then 'United States'
--  when trim(cntry) ='' or cntry is null then 'n/a'
-- else trim(cntry) 
-- end as cntry
-- from bronze.erp_loc_a101 order by cntry;


-- select 
-- replace (cid,'-','') as cid,
-- case 
--  when trim(cntry) ='DE' then 'Germany'
--  when trim(cntry) in ('US','USA') then 'United States'
--  when trim(cntry) ='' or cntry is null then 'n/a'
-- else trim(cntry) 
-- end as cntry
-- from bronze.erp_loc_a101;


-- insert into silver.erp_loc_a101
-- (
--   cid,
--   cntry
-- )
-- select 
-- replace (cid,'-','') as cid,
-- case 
--  when trim(cntry) ='DE' then 'Germany'
--  when trim(cntry) in ('US','USA') then 'United States'
--  when trim(cntry) ='' or cntry is null then 'n/a'
-- else trim(cntry) 
-- end as cntry
-- from bronze.erp_loc_a101;

-- select * from silver.erp_loc_a101 ;
-- select distinct cntry from silver.erp_loc_a101

--Table erp_px_cat_g1v2

-- select * from bronze.erp_px_cat_g1v2;

-- select 
-- id,
-- cat,
-- subcat,
-- maintenance from bronze.erp_px_cat_g1v2;

-- select * from bronze.erp_px_cat_g1v2 where cat ! = trim(cat) or subcat != trim(subcat) or maintenance != trim(maintenance);
-- select distinct cat from bronze.erp_px_cat_g1v2;
-- select distinct subcat from bronze.erp_px_cat_g1v2;
-- select distinct maintenance from bronze.erp_px_cat_g1v2;


-- insert into silver.erp_px_cat_g1v2
-- (
--   id,
--   cat,
--   subcat,
--   maintenance
-- )
-- select
-- id,
-- cat,
-- subcat,
-- maintenance
-- from bronze.erp_px_cat_g1v2;


-- select * from silver.erp_px_cat_g1v2;

-- select distinct cat from silver.erp_px_cat_g1v2;
-- select distinct subcat from silver.erp_px_cat_g1v2;
-- select distinct maintenance from silver.erp_px_cat_g1v2;


--Stored Procedure for Silver Layer


-- create or alter procedure silver.load_silver as
-- begin

-- declare @start_time datetime,@end_time datetime;

--   begin try

--     set @start_time =getdate();
-- 	print '======================================';
-- 	print 'Loading Silver Layer';
-- 	print '======================================';

	

-- 	Print '****************************************';
-- 	Print 'Loading CRM Tables';
-- 	Print '****************************************';

-- 	set @start_time =getdate();

--   Print '>> Truncating Table: silver.crm_cust_info';
--   TRUNCATE TABLE silver.crm_cust_info;
--   Print '>> Inserting Data Into: silver.crm_cust_info';
--   insert into silver.crm_cust_info
--   (
--   cst_id,
--   cst_key,    
--   cst_firstname,
--   cst_lastname,
--   cst_material_status,
--   cst_gender,
--   cst_create_date
--   )

--   select 
--   cst_id,
--   cst_key,
--   trim(cst_firstname) as cst_firstname,
--   trim(cst_lastname) as cst_lastname,
--   case when upper(trim(cst_material_status)) = 'M' then 'Married'
--   when upper(trim(cst_material_status)) = 'S' then 'Single'
--   else 'n/a' end  cst_material_status,
--   case when upper(trim(cst_gender)) = 'M' then 'Male'
--   when upper(trim(cst_gender)) = 'F' then 'Female'
--   else 'n/a' end as cst_gender,
--   cst_create_date
--   from (
--   select *, row_number() over (partition by cst_id order by cst_create_date desc) as flag_last 
--   from bronze.crm_cust_info where cst_id is not null
--   )t where flag_last = 1;

--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

--  Print '****************************************';

 
-- /*
-- if object_id('silver.crm_prd_info','U') is not null 
-- drop table silver.crm_prd_info;

-- create table silver.crm_prd_info (
-- prd_id int,
-- cat_id nvarchar(50),
-- prd_key nvarchar(50),
-- prd_nm nvarchar(50),
-- prd_cost int,
-- prd_line nvarchar(50),
-- prd_start_dt datetime,
-- prd_end_dt datetime,
-- dwh_create_date Datetime2 default getdate() );

-- */


-- set @start_time =getdate();

-- Print '>> Truncating Table: silver.crm_prd_info';
-- TRUNCATE TABLE silver.crm_prd_info;
-- Print '>> Inserting Data Into: silver.crm_prd_info';

-- insert into silver.crm_prd_info(
-- prd_id, 
-- cat_id,
-- prd_key,
-- prd_nm,
-- prd_cost,
-- prd_line,
-- prd_start_dt,
-- prd_end_dt
-- )

-- select 
-- prd_id,
-- replace(substring(prd_key,1,5), '-', '_') as cat_id,
-- substring(prd_key,7,len(prd_key)) as prd_key,
-- prd_nm,
-- isnull(prd_cost,0) as prd_cost,
-- case upper(trim(prd_line)) 
-- when 'M' then 'Mountain'
-- when 'R' then 'Road'
-- when 'T' then 'Touring'
-- when 'S' then 'Other Sales'
-- else 'n/a' end as prd_line,
-- cast (prd_start_dt as date) as prd_start_dt,
-- cast (lead(prd_start_dt) over (partition by prd_key order by prd_start_dt) -1 as date) as prd_end_dt_test
-- from bronze.crm_prd_info;

--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

--  Print '****************************************'; 






-- /*
-- if object_id('silver.crm_sales_details','U') is not null 
--   drop table silver.crm_sales_details;

--   create table silver.crm_sales_details (
--   sls_ord_num Nvarchar(50),
--   sls_prd_key Nvarchar(50),
--   sls_cust_id int,
--   sls_order_dt date,
--   sls_ship_dt date,
--   sls_due_dt date,
--   sls_sales int,
--   sls_quantity int,
--   sls_price int,
--   dwh_create_date Datetime2 default getdate()
-- );

-- */

-- set @start_time =getdate();

-- Print '>> Truncating Table: silver.crm_sales_details';
-- TRUNCATE TABLE silver.crm_sales_details;
-- Print '>> Inserting Data Into: silver.crm_sales_details';
-- insert into silver.crm_sales_details(
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- sls_order_dt,
-- sls_ship_dt,
-- sls_due_dt,
-- sls_sales,
-- sls_quantity,
-- sls_price    
-- )

-- select 
-- sls_ord_num,
-- sls_prd_key,
-- sls_cust_id,
-- case 
--  when sls_order_id = 0 or len(sls_order_id) != 8 then null
--  else cast(cast(sls_order_id as varchar) as date) 
-- end as sls_order_dt,
-- case
--  when sls_ship_dt = 0 or len(sls_ship_dt) != 8 then null
--  else cast(cast(sls_ship_dt as varchar) as date) 
-- end as sls_ship_dt,
-- case
--  when sls_due_dt = 0 or len(sls_due_dt) != 8 then null
--  else cast(cast(sls_due_dt as varchar) as date) 
-- end as sls_due_dt,
-- case 
--  when sls_sales is null or sls_sales<=0 or sls_sales != sls_quantity * abs(sls_price )
--  then sls_quantity * abs(sls_price) 
-- else sls_sales end as sls_sales,
-- sls_quantity,
-- case 
--  when sls_price is null or sls_price<=0 
--  then sls_sales / nullif(sls_quantity, 0) 
-- else sls_price end as sls_price
-- from bronze.crm_sales_details;


--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';



-- 	Print '****************************************';
-- 	Print 'Loading ERP Tables';
-- 	Print '****************************************';

-- set @start_time =getdate();

-- Print '>> Truncating Table: silver.erp_cust_az12';
-- TRUNCATE TABLE silver.erp_cust_az12;
-- Print '>> Inserting Data Into: silver.erp_cust_az12';

-- insert into silver.erp_cust_az12
-- (
-- cid,
-- bdate,
-- gen
-- )

-- select 
-- case 
--  when cid like 'NAS%' 
--  then SUBSTRING(cid, 4, LEN(cid) )
-- else cid end as cid,

-- case 
--  when bdate > getdate() then null
--  else bdate 
-- end as bdate,

-- case 
--   when upper(trim(gen)) in ('M','MALE') then 'Male'
--   when upper(trim(gen)) in ('F','FEMALE') then 'Female' 
--   else 'n/a'
-- end as gen   
-- from bronze.erp_cust_az12;


-- set @end_time =getdate();

-- print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

-- Print '****************************************';

 
 
-- set @start_time =getdate();

-- Print '>> Truncating Table: silver.erp_loc_a101';
-- TRUNCATE TABLE silver.erp_loc_a101;
-- Print '>> Inserting Data Into: silver.erp_loc_a101';

-- insert into silver.erp_loc_a101
-- (
--   cid,
--   cntry
-- )

-- select 
-- replace (cid,'-','') as cid,
-- case 
--  when trim(cntry) ='DE' then 'Germany'
--  when trim(cntry) in ('US','USA') then 'United States'
--  when trim(cntry) ='' or cntry is null then 'n/a'
-- else trim(cntry) 
-- end as cntry
-- from bronze.erp_loc_a101;

-- set @end_time =getdate();

-- print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

-- Print '****************************************';


-- set @start_time =getdate();

-- Print '>> Truncating Table: silver.erp_px_cat_g1v2';
-- TRUNCATE TABLE silver.erp_px_cat_g1v2;
-- Print '>> Inserting Data Into: silver.erp_px_cat_g1v2';

-- insert into silver.erp_px_cat_g1v2
-- (
--   id,
--   cat,
--   subcat,
--   maintenance
-- )

-- select
-- id,
-- cat,
-- subcat,
-- maintenance
-- from bronze.erp_px_cat_g1v2;

--  set @end_time =getdate();

--  print'>> Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';

--  Print '****************************************';


--  set @end_time =getdate();

--  Print '****************************************';
--  Print 'Loading Silver Layer is Completed';
--  Print '****************************************';

--  print'>> Total Load Duration:' + cast(datediff(second,@start_time,@end_time )as nvarchar) + 'seconds';


--     end try

-- 	begin catch

-- 	print '=================================================';
-- 	print 'Error Occured During Loading Silver Layer';
-- 	print 'Error Message' + Error_Message();
-- 	print 'Error Message' + Cast(Error_Number() as Nvarchar);
-- 	print 'Error Message' + Cast(Error_State() as Nvarchar);
-- 	print 'Error Occured During Loading Silver Layer';
-- 	print '=================================================';

-- 	end catch

-- end;

-- exec silver.load_silver;


-- Load both Layers
-- exec bronze.load_silver;
-- exec silver.load_silver;



-- Gold Layer

-- select * from silver.crm_cust_info;

-- select 
-- cst_id,
-- cst_key,
-- cst_firstname,
-- cst_lastname,
-- cst_material_status,
-- cst_gender,
-- cst_create_date
-- from silver.crm_cust_info;

-- for duplicates

-- select cst_id, count(*) from 
-- (
-- select 
-- ci.cst_id,
-- ci.cst_key,
-- ci.cst_firstname,
-- ci.cst_lastname,
-- ci.cst_material_status,
-- ci.cst_gender,
-- ci.cst_create_date,
-- ca.bdate,
-- ca.gen,
-- la.cntry
-- from silver.crm_cust_info ci
-- left join silver.erp_cust_az12 ca
-- on ci.cst_key = ca.cid
-- left join silver.erp_loc_a101 la
-- on  ci.cst_key = la.cid
-- )t 
-- group by cst_id
-- having count(*) >1;


-- select 
-- distinct
-- ci.cst_gender,
-- ca.gen
-- from silver.crm_cust_info ci
-- left join silver.erp_cust_az12 ca
-- on ci.cst_key = ca.cid
-- left join silver.erp_loc_a101 la
-- on  ci.cst_key = la.cid 
-- order by 1,2;

--Data Integration

-- select 
-- distinct
-- ci.cst_gender,
-- ca.gen,
-- case 
--  when ci.cst_gender != 'n/a' then ci.cst_gender --CRM is the master for gender info
--  else coalesce(ca.gen,'n/a') 
-- end as new_gender
-- from silver.crm_cust_info ci
-- left join silver.erp_cust_az12 ca
-- on ci.cst_key = ca.cid
-- left join silver.erp_loc_a101 la
-- on  ci.cst_key = la.cid 
-- order by 1,2;


-- Readabilty

-- select 
-- ci.cst_id as customer_id,
-- ci.cst_key as customer_number,
-- ci.cst_firstname as first_name,
-- ci.cst_lastname as last_name,
-- la.cntry as country,
-- ci.cst_material_status as marital_status,
-- case 
--  when ci.cst_gender != 'n/a' then ci.cst_gender --CRM is the master for gender info
--  else coalesce(ca.gen,'n/a') 
-- end as new_gender,
-- ca.bdate as birth_date,
-- ci.cst_create_date as create_date
-- from silver.crm_cust_info ci
-- left join silver.erp_cust_az12 ca
-- on ci.cst_key = ca.cid
-- left join silver.erp_loc_a101 la
-- on  ci.cst_key = la.cid;



--Create a View

-- Create View gold.dim_customers as 
-- select 
-- row_number () over (order by cst_id) as customer_key,
-- ci.cst_id as customer_id,
-- ci.cst_key as customer_number,
-- ci.cst_firstname as first_name,
-- ci.cst_lastname as last_name,
-- la.cntry as country,
-- ci.cst_material_status as marital_status,
-- case 
--  when ci.cst_gender != 'n/a' then ci.cst_gender --CRM is the master for gender info
--  else coalesce(ca.gen,'n/a') 
-- end as gender,
-- ca.bdate as birth_date,
-- ci.cst_create_date as create_date
-- from silver.crm_cust_info ci
-- left join silver.erp_cust_az12 ca
-- on ci.cst_key = ca.cid
-- left join silver.erp_loc_a101 la
-- on  ci.cst_key = la.cid;


-- select * from gold.dim_customers;
-- select distinct gender from gold.dim_customers;



-- select 
-- pn.prd_id,
-- pn.cat_id,
-- pn.prd_key,
-- pn.prd_nm,
-- pn.prd_cost,
-- pn.prd_line,
-- pn.prd_start_dt,
-- pn.prd_end_dt
-- from silver.crm_prd_info pn
-- where prd_end_dt is null  ; --Filter out all Historical Data;

-- select 
-- pn.prd_id,
-- pn.cat_id,
-- pn.prd_key,
-- pn.prd_nm,
-- pn.prd_cost,
-- pn.prd_line,
-- pn.prd_start_dt,
-- pn.prd_end_dt,
-- pc.cat,
-- pc.subcat,
-- pc.maintenance
-- from silver.crm_prd_info pn
-- left join silver.erp_px_cat_g1v2 pc
-- on pn.cat_id = pc.id 
-- where prd_end_dt is null ; 



-- select prd_key, count(*) from 
-- (
-- select 
-- pn.prd_id,
-- pn.cat_id,
-- pn.prd_key,
-- pn.prd_nm,
-- pn.prd_cost,
-- pn.prd_line,
-- pn.prd_start_dt,
-- pn.prd_end_dt,
-- pc.cat,
-- pc.subcat,
-- pc.maintenance
-- from silver.crm_prd_info pn
-- left join silver.erp_px_cat_g1v2 pc
-- on pn.cat_id = pc.id 
-- where prd_end_dt is null 
-- )
-- t group by prd_key 
-- having count(*) > 1; 


--Create a View

-- create view gold.dim_products as 
-- select 
-- row_number() over (order by pn.prd_start_dt, pn.prd_key) as product_key,
-- pn.prd_id as product_id,
-- pn.prd_key as product_number,
-- pn.prd_nm as product_name,
-- pn.cat_id as category_id ,
-- pc.cat as category,
-- pc.subcat as subcategory,
-- pc.maintenance ,
-- pn.prd_cost as cost,
-- pn.prd_line as product_line,
-- pn.prd_start_dt as start_date
-- from silver.crm_prd_info pn
-- left join silver.erp_px_cat_g1v2 pc
-- on pn.cat_id = pc.id 
-- where prd_end_dt is null 


-- select * from gold.dim_products;



-- Create a View  

-- create view gold.fact_sales as
-- select 
-- sd.sls_ord_num as order_number,
-- pr.product_key,
-- cu.customer_key,
-- sd.sls_order_dt as order_date,
-- sd.sls_ship_dt as shipping_date,
-- sd.sls_due_dt as due_date,
-- sd.sls_sales as sales_amount,
-- sd.sls_quantity as quantity,
-- sd.sls_price as price
-- from silver.crm_sales_details sd 
-- left join gold.dim_products pr
-- on sd.sls_prd_key = pr.product_number
-- left join gold.dim_customers cu
-- on sd.sls_cust_id = cu.customer_id;

-- select * from gold.fact_sales;

-- Foreign Key Integrity (Dimensions)
-- select * 
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- where c.customer_key is null;

-- select * 
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- left join gold.dim_products p
-- on p.product_key = f.product_key 
-- where p.product_key is null;





-- -- Exploratory Data Analysis

-- --Explore all Objects in the Database 
-- select * from information_schema.tables;
-- --Explore All Columns in the Database
-- select * from information_schema.columns;

-- --Dimension Exploration
-- select distinct country from gold.dim_customers;
-- select distinct category,subcategory from gold.dim_customers;

-- --Date Exploration

-- --Find the date of the first and last order
-- -- How many years of sales are available
-- select order_date from gold.fact_sales;
-- select min(order_date),max(order_date),
-- datediff(year,min(order_date),max(order_date) as order_range_years
-- from gold.fact_sales;

-- -- Find the youngest and the oldest customer 
-- select min(birth_date)as oldest_birthdate ,
-- max(birth_date) as youngest_birthdate 
-- from gold.dim_customers;

-- --Measure Exploration

-- -- Find the Total Sales
-- select sum(sales_amount) as total_sales from gold.fact_sales;
-- -- Find how many items are sold
-- select sum (quantity) as total_quantity from gold.fact_sales;
-- -- Find the average selling price
-- select avg(price) as avg_price from gold.fact_sales;
-- -- Find the total number of orders,customers,products
-- select count(order_number) as total_orders from gold.fact_sales;
-- select count(distinct order_number) as total_orders from gold.fact_sales;

-- select count(customer_key) as total_customers from gold.fact_sales;

-- select count(product_name) as total_products from gold.fact_sales;
-- select count(distinct product_name) as total_products from gold.fact_sales;

-- -- Find the total number of customers that has placed an order
-- select count(distinct customer_key) as total_customers from gold.fact_sales;


-- -- Generate a Report that shows all key metrics of the business

-- select 'Total Sales' as measure_name,
-- sum(sales_amount) as measure_value 
-- from gold.fact_sales

-- union all 

-- select 'Total Quantity' ,
-- sum(quantity)
-- from gold.fact_sales

-- union all 

-- select 'Average Price' ,
-- Avg(price) 
-- from gold.fact_sales

-- union all 

-- select 'Total No of Orders' ,
-- count(distinct order_number) 
-- from gold.fact_sales

-- union all 

-- select 'Total No of Products',
-- count(product_name) 
-- from gold.dim_products

-- union all 

-- select 'Total No of Customers' as measure_name,
-- count(customer_key) 
-- from gold.fact_sales;


-- -- Magnitude Analysis


-- -- Find the total customers by country
-- select country ,count(customer_key) as total_customers
-- from gold.dim_customers group by country 
-- order by total_customers desc;

-- -- Find the total customers by gender
-- select gender,count(customer_key) as total_customers
-- from gold.dim_customers group by gender
-- order by total_customers desc;

-- -- Find the total products by category
-- select category,count(product_key) as total_products
-- from gold.dim_products group by category
-- order by total_products desc;

-- -- What is the average costs in each category
-- select category,avg(cost) as avg_cost
-- from gold.dim_products group by category
-- order by avg_cost desc;

-- -- What is the total revenue generated for each category
-- select 
-- p.category,
-- sum(f.sales_amount) total_revenue
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on p.product_key = f.product_key
-- group by p.category
-- order by total_revenue desc;

-- -- Find the total revenue is generated by each customer
-- select 
-- c.customer_key,
-- c.first_name,
-- c.last_name,
-- sum(f.sales_amount) total_revenue
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- group by 
-- c.customer_key,
-- c.first_name,
-- c.last_name
-- order by total_revenue desc;


-- -- What is the distribution of sold items across countries

-- select 
-- c.country,
-- sum(f.quantity) total_sold_items
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- group by 
-- c.country
-- order by total_sold_items desc;



-- -- Ranking Analysis

-- -- Which 5 Products generate the highest revenue

-- select top 5
-- p.product_name,
-- sum(f.sales_amount) total_revenue
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on p.product_key = f.product_key
-- group by p.product_name
-- order by total_revenue desc;

-- select * from
-- (
-- select 
-- p.product_name,
-- sum(f.sales_amount) total_revenue,
-- row_number() over (order by sum(f.sales_amount)desc) as rank_products
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on p.product_key = f.product_key
-- group by p.product_name
-- ) t where rank_products <= 5 ;


-- -- What are the 5 worst-performing products in terms of sales

-- select top 5
-- p.product_name,
-- sum(f.sales_amount) total_revenue
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on p.product_key = f.product_key
-- group by p.product_name
-- order by total_revenue asc;

-- -- FInd the top 10 customers who have generated the highest revenue

-- select  top 10
-- c.customer_key,
-- c.first_name,
-- c.last_name,
-- sum(f.sales_amount) total_revenue
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- group by 
-- c.customer_key,
-- c.first_name,
-- c.last_name
-- order by total_revenue desc;


-- -- Find the 3 customers with the lowest orders placed
-- select  top 3
-- c.customer_key,
-- c.first_name,
-- c.last_name,
-- count(distinct order_number)  as total_orders
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- group by 
-- c.customer_key,
-- c.first_name,
-- c.last_name
-- order by total_orders ;



-- --Advanced Data Analytics

-- -- Change Over Time Trends

-- select 
-- year(order_date) as order_year,
-- sum(sales_amount) as total_sales
-- from gold.fact_sales
-- where order_date is not null
-- group by year(order_date)
-- order by year(order_date);


-- select 
-- year(order_date) as order_year,
-- sum(sales_amount) as total_sales,
-- count(distinct customer_key) as total_customers,
-- sum(quantity) as total_quantity
-- from gold.fact_sales
-- where order_date is not null
-- group by year(order_date)
-- order by year(order_date);


-- select 
-- year(order_date) as order_year,
-- month(order_date) as order_year,
-- sum(sales_amount) as total_sales,
-- count(distinct customer_key) as total_customers,
-- sum(quantity) as total_quantity
-- from gold.fact_sales
-- where order_date is not null
-- group by year(order_date),month(order_date)
-- order by year(order_date),month(order_date);


-- select 
-- datetrunc(month,order_date) as order_date,
-- sum(sales_amount) as total_sales,
-- count(distinct customer_key) as total_customers,
-- sum(quantity) as total_quantity
-- from gold.fact_sales
-- where order_date is not null
-- group by datetrunc(month,order_date)
-- order by datetrunc(month,order_date);

-- select 
-- format(order_date,'yyyy-mmm') as order_date,
-- sum(sales_amount) as total_sales,
-- count(distinct customer_key) as total_customers,
-- sum(quantity) as total_quantity
-- from gold.fact_sales
-- where order_date is not null
-- group by format(order_date,'yyyy-mmm')
-- order by format(order_date,'yyyy-mmm');


-- -- Cumulative Analysis

-- -- Calculate the total sales per month
-- -- and the running total of sales over time



-- select order_date,total_sales ,
-- sum(total_sales) over (order by order_date) as running_total_sales

-- from
-- (
-- select 
-- datetrunc(month,order_date) as order_date,
-- sum(sales_amount) as total_sales

-- from gold.fact_sales
-- where order_date is not null
-- group by datetrunc(month,order_date)
-- order by datetrunc(month,order_date)
-- )t ;


-- select order_date,total_sales ,
-- sum(total_sales) over (partition by order_date order by order_date) as running_total_sales

-- from
-- (
-- select 
-- datetrunc(month,order_date) as order_date,
-- sum(sales_amount) as total_sales

-- from gold.fact_sales
-- where order_date is not null
-- group by datetrunc(month,order_date)
-- )t ;


-- select order_date,total_sales ,
-- sum(total_sales) over ( order by order_date) as running_total_sales

-- from
-- (
-- select 
-- datetrunc(year,order_date) as order_date,
-- sum(sales_amount) as total_sales

-- from gold.fact_sales
-- where order_date is not null
-- group by datetrunc(year,order_date)
-- )t ;



-- -- Performance Analysis

-- /*
-- Analyse the yearly performance of products by comparing their sales
-- to both the average sales performance of the product and the previous year's Sales
-- */

-- select 
-- f.order_date,
-- p.product_name,
-- f.sales_amount
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on f.product_key = p.product_key;


-- select 
-- year(f.order_date) as order_year,
-- p.product_name,
-- sum(f.sales_amount) as current_sales
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on f.product_key = p.product_key
-- where order_date is not null
-- group by year(f.order_date),p.product_name;

-- with yearly_product_sales as
-- (
-- select 
-- year(f.order_date) as order_year,
-- p.product_name,
-- sum(f.sales_amount) as current_sales
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on f.product_key = p.product_key
-- where order_date is not null
-- group by year(f.order_date),p.product_name
-- )
-- select 
-- order_year,
-- product_name,
-- current_sales,
-- avg(current_sales) over(partition by product_name) avg_sales,
-- current_sales -
-- avg(current_sales) over(partition by product_name) as diff_avg,
-- case 
--  when current_sales -
--  avg(current_sales) over(partition by product_name) > 0
--  then 'Above Avg'
--  when current_sales -
--  avg(current_sales) over(partition by product_name) < 0
--  then 'Below Avg'
-- else 'avg'
-- end avg_change
-- from yearly_product_sales
-- order by product_name,order_year;

-- with yearly_product_sales as
-- (
-- select 
-- year(f.order_date) as order_year,
-- p.product_name,
-- sum(f.sales_amount) as current_sales
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on f.product_key = p.product_key
-- where order_date is not null
-- group by year(f.order_date),p.product_name
-- )
-- select 
-- order_year,
-- product_name,
-- current_sales,
-- avg(current_sales) over(partition by product_name) avg_sales,
-- current_sales -
-- avg(current_sales) over(partition by product_name) as diff_avg,
-- case 
--  when current_sales -
--  avg(current_sales) over(partition by product_name) > 0
--  then 'Above Avg'
--  when current_sales -
--  avg(current_sales) over(partition by product_name) < 0
--  then 'Below Avg'
-- else 'avg'
-- end avg_change,
-- lag(current_sales) over (partition by product_name order by order_year ) as py_sales,
-- current_sales - lag(current_sales) over (partition by product_name order by order_year ) as diff_py,
-- case 
--  when current_sales -
--  lag(current_sales) over (partition by product_name order by order_year ) > 0 
--  then 'Increase'
--  when current_sales -
--  lag(current_sales) over (partition by product_name order by order_year ) < 0 
--  then 'Decrease'
--  else 'No Change'
-- end py_change
-- from yearly_product_sales
-- order by product_name,order_year;



-- -- Part to Whole Analysis

-- -- Which categories contribute the most to overall sales?

-- with category_sales as 
-- (
-- select 
-- category,
-- sum(sales_amount) total_sales
-- from gold.fact_sales f
-- left join gold.dim_products p
-- on p.product_key = f.product_key 
-- group by category
-- )
-- select category,total_sales,
-- sum(total_sales) over () overall_sales,
-- concat(round((cast ( total_sales as float) / sum(total_sales) over () ) * 100 ,2) ,'%')as percentage_of_total
-- from category_sales 
-- order by total_sales desc;



-- -- Data Segmentation

-- /*
-- Segment products into cost ranges and 
-- count how many products fall into each segment 

-- */
-- with product_segments as 
-- (
-- select 
-- product_key,
-- product_name.
-- cost,
-- case when cost < 100 then 'Below 100'
--      when cost between 100 and 500 then '100-500'
--      when cost between 500 and 1000 then '500-1000'
--      else 'Above 1000'
-- end cost_range     
-- from gold.dim_products
-- ) 
-- select 
-- cost_range,
-- count(product_key) as total_products
-- from product_segments
-- group by cost_range
-- order by total_products desc;



-- /*
-- Group customers into three segments based on theirspending behavior
-- - VIP
-- - Regular
-- - New
-- and find the total number of customers by each group
-- */

-- select 
-- c.customer_key,
-- sum(f.sales_amount) as total_spending,
-- min(order_date) as first_order ,
-- max(order_date) as last_order ,
-- datediff(month,min(order_date),max(order_date)) as lifespan
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on f.customer_key = c.customer_key
-- group by c.customer_key;



-- with customer_spending as 
-- (
-- select 
-- c.customer_key,
-- sum(f.sales_amount) as total_spending,
-- min(order_date) as first_order ,
-- max(order_date) as last_order ,
-- datediff(month,min(order_date),max(order_date)) as lifespan
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on f.customer_key = c.customer_key
-- group by c.customer_key
-- )
-- select 
-- customer_segment,
-- count(customer_key) as total_customers
-- from 
-- (
-- select 
-- customer_key,
-- case 
-- 	when lifespan >= 12 and total_spending > 5000 then 'VIP'
-- 	when lifespan >= 12 and total_spending < 5000 then 'Regular'
-- 	else 'New'
-- end customer_segment
-- from customer_spending 
-- )t
-- group by customer_segment ;



-- -- Reporting

-- -- 1.Base Query : Retrieves core columns from tables

-- select 
-- f.order_number,
-- f.product_key,
-- f.order_date,
-- f.sales_amount,
-- f.quantity,
-- c.customer_key,
-- c.customer_number,
-- c.first_name,
-- c.last_name,
-- c.birthdate
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.cusomer_key = f.customer_key
-- where order_date is not null ;


-- with base_query as 
-- (
-- select 
-- f.order_number,
-- f.product_key,
-- f.order_date,
-- f.sales_amount,
-- f.quantity,
-- c.customer_key,
-- c.customer_number,
-- concat(c.first_name,' ',c.last_name) as customer_name,
-- datediff(year,c.birthdate,getdate()) as age
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.cusomer_key = f.customer_key
-- where order_date is not null 
-- )
-- select 
-- * 
-- from base_query;





-- with base_query as 
-- (
-- select 
-- f.order_number,
-- f.product_key,
-- f.order_date,
-- f.sales_amount,
-- f.quantity,
-- c.customer_key,
-- c.customer_number,
-- concat(c.first_name,' ',c.last_name) as customer_name,
-- datediff(year,c.birth_date,getdate()) as age
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- where order_date is not null 

-- ),
-- customer_aggregation as 
-- (
-- select 
-- customer_key,
-- customer_number,
-- customer_name,
-- age,
-- count(distinct order_number) as total_orders,
-- sum(sales_amount) as total_sales,
-- sum(quantity) as total_quantity,
-- count(distinct product_key) as total_products,
-- max (order_date) as last_order_date,
-- min (order_date) as first_order_date,
-- datediff(month,min (order_date),max (order_date)) as lifespan
-- from base_query
-- group by
-- customer_key,
-- customer_number,
-- customer_name,
-- age
-- )

-- select 
-- customer_key,
-- customer_number,
-- customer_name,
-- age,
--  case 
--  	when lifespan >= 12 and total_spending > 5000 then 'VIP'
--  	when lifespan >= 12 and total_spending < 5000 then 'Regular'
--  	else 'New'
--  end customer_segment,
-- total_orders,
-- total_sales,
-- total_quantity,
-- total_products,
-- last_order_date,
-- datediff(month,last_order_date,getdate()) as recency,
-- lifespan,
-- case 
--     when total_sales = 0 then 0
--     else total_sales / total_orders 
-- end as avg_order_value,
-- case
--     when lifespan = 0 then total_sales
--     else total_sales / lifespan 
-- end as avg_monthly_spend 
-- from customer_aggregation;


-- -- view for reporting

-- create view gold.report_customers as 

-- with base_query as 
-- (
-- select 
-- f.order_number,
-- f.product_key,
-- f.order_date,
-- f.sales_amount,
-- f.quantity,
-- c.customer_key,
-- c.customer_number,
-- concat(c.first_name,' ',c.last_name) as customer_name,
-- datediff(year,c.birth_date,getdate()) as age
-- from gold.fact_sales f
-- left join gold.dim_customers c
-- on c.customer_key = f.customer_key
-- where order_date is not null 

-- ),
-- customer_aggregation as 
-- (
-- select 
-- customer_key,
-- customer_number,
-- customer_name,
-- age,
-- count(distinct order_number) as total_orders,
-- sum(sales_amount) as total_sales,
-- sum(quantity) as total_quantity,
-- count(distinct product_key) as total_products,
-- max (order_date) as last_order_date,
-- min (order_date) as first_order_date,
-- datediff(month,min (order_date),max (order_date)) as lifespan
-- from base_query
-- group by
-- customer_key,
-- customer_number,
-- customer_name,
-- age
-- )

-- select 
-- customer_key,
-- customer_number,
-- customer_name,
-- age,
--  case 
--  	when lifespan >= 12 and total_sales > 5000 then 'VIP'
--  	when lifespan >= 12 and total_sales < 5000 then 'Regular'
--  	else 'New'
--  end customer_segment,
-- total_orders,
-- total_sales,
-- total_quantity,
-- total_products,
-- last_order_date,
-- datediff(month,last_order_date,getdate()) as recency,
-- lifespan,
-- case 
--     when total_sales = 0 then 0
--     else total_sales / total_orders 
-- end as avg_order_value,
-- case
--     when lifespan = 0 then total_sales
--     else total_sales / lifespan 
-- end as avg_monthly_spend 
-- from customer_aggregation;



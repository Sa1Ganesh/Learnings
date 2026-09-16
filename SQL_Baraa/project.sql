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


--Stored procedure

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




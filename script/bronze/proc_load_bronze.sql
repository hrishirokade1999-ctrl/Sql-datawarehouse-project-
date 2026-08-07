create or alter Procedure  bronze.load_bronze as
BEGIN
  DECLARE @START_TIME DATETIME,@END_TIME AS DATETIME
PRINT '======================================================'
PRINT '==============LODING Bronze Layer====================='
PRINT '======================================================'

Print '------------------------------------------------------'
print 'LODING CRM Tables.....'
print '------------------------------------------------------'

SET @START_TIME =GETDATE();
print '>>Trunacting Table: bronze.crm_cust_info'
truncate table bronze.crm_cust_info
print 'Inserting Data Into: bronze.crm_cust_info'
bulk insert bronze.crm_cust_info 
from 'C:\Users\Admin\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (
firstrow =2,
fieldterminator =',',
tablock
);
SET @END_TIME =GETDATE();
PRINT '>> lOAD DURATION: ' + CAST( DATEDIFF(SECOND,@START_TIME,@END_TIME)AS NVARCHAR) + ' SECONDS'
PRINT '---------------------------------------------------------------------------

'

SET @START_TIME =GETDATE();
print '>>Trunacting Table: bronze.crm_prd_info'
truncate table bronze.crm_prd_info
print 'Inserting Data Into: bronze.crm_prd_info'
bulk insert bronze.crm_prd_info
from 'C:\Users\Admin\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (
firstrow =2,
fieldterminator =',',
tablock
);
SET @END_TIME =GETDATE();
PRINT '>> lOAD DURATION: ' + CAST( DATEDIFF(SECOND,@START_TIME,@END_TIME)AS NVARCHAR) + ' SECONDS'
PRINT '---------------------------------------------------------------------------

'

SET @START_TIME =GETDATE();
print '>>Trunacting Table: bronze.crm_sales_details'
truncate table bronze.crm_sales_details
print 'Inserting Data Into: bronze.crm_sales_details'
bulk insert bronze.crm_sales_details
from 'C:\Users\Admin\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (
firstrow =2,
fieldterminator =',',
tablock
);
SET @END_TIME =GETDATE();
PRINT '>> lOAD DURATION: ' + CAST( DATEDIFF(SECOND,@START_TIME,@END_TIME)AS NVARCHAR) + ' SECONDS'
PRINT '---------------------------------------------------------------------------

'

Print '------------------------------------------------------'
print 'LODING ERP Tables.....'
print '------------------------------------------------------'


SET @START_TIME =GETDATE();
print '>>Trunacting Table: bronze.erp_cust_az12'
truncate table bronze.erp_cust_az12
print 'Inserting Data Into: bronze.erp_cust_az12'
bulk insert bronze.erp_cust_az12
from 'C:\Users\Admin\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
with (
firstrow =2,
fieldterminator =',',
tablock
);
SET @END_TIME =GETDATE();
PRINT '>> lOAD DURATION: ' + CAST( DATEDIFF(SECOND,@START_TIME,@END_TIME)AS NVARCHAR) + ' SECONDS'
PRINT '---------------------------------------------------------------------------

'
SET @START_TIME =GETDATE();
print '>>Trunacting Table: bronze.erp_loc_a101'
truncate table bronze.erp_loc_a101
print 'Inserting Data Into: bronze.erp_loc_a101'
bulk insert bronze.erp_loc_a101
from 'C:\Users\Admin\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
with (
firstrow =2,
fieldterminator =',',
tablock
);
SET @END_TIME =GETDATE();
PRINT '>> lOAD DURATION: ' + CAST( DATEDIFF(SECOND,@START_TIME,@END_TIME)AS NVARCHAR) + ' SECONDS'
PRINT '---------------------------------------------------------------------------

'
SET @START_TIME =GETDATE();
print '>>Trunacting Table: bronze.erp_px_cat_g1v2'
truncate table bronze.erp_px_cat_g1v2
print 'Inserting Data Into: bronze.erp_px_cat_g1v2'
bulk insert bronze.erp_px_cat_g1v2
from 'C:\Users\Admin\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
with (
firstrow =2,
fieldterminator =',',
tablock
);
SET @END_TIME =GETDATE();
PRINT '>> lOAD DURATION: ' + CAST( DATEDIFF(SECOND,@START_TIME,@END_TIME)AS NVARCHAR) + ' SECONDS'
PRINT '---------------------------------------------------------------------------

'


END

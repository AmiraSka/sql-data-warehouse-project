Delimiter //
Create Procedure bronze.load_bronze()
begin 
	Truncate Table bronze.crm_cust_info;
	LOAD DATA LOCAL INFILE 'C:/Users/MSI/Desktop/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
	INTO TABLE crm_cust_info
	FIELDS TERMINATED BY ',' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;

	Truncate Table bronze.crm_prd_info;
	LOAD DATA LOCAL INFILE 'C:/Users/MSI/Desktop/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
	INTO TABLE crm_prd_info
	FIELDS TERMINATED BY ',' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;

	Truncate Table bronze.crm_sales_details;
	LOAD DATA LOCAL INFILE 'C:/Users/MSI/Desktop/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
	INTO TABLE crm_sales_details
	FIELDS TERMINATED BY ',' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


	Truncate Table bronze.erp_cust_az12;
	LOAD DATA LOCAL INFILE 'C:/Users/MSI/Desktop/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
	INTO TABLE erp_cust_az12
	FIELDS TERMINATED BY ',' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;

	Truncate Table bronze.erp_loc_a101;
	LOAD DATA LOCAL INFILE 'C:/Users/MSI/Desktop/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv'
	INTO TABLE erp_loc_a101
	FIELDS TERMINATED BY ',' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;

	Truncate Table bronze.erp_px_cat_g1v2;
	LOAD DATA LOCAL INFILE 'C:/Users/MSI/Desktop/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
	INTO TABLE erp_px_cat_g1v2
	FIELDS TERMINATED BY ',' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;
END //
DELIMITER ;

SELECT count(*) from bronze.crm_prd_info;
SELECT count(*) from bronze.crm_cust_info;
SELECT count(*) from bronze.crm_sales_details;
SELECT count(*) from bronze.erp_cust_az12;
SELECT count(*) from bronze.erp_loc_a101;
SELECT count(*) from bronze.erp_px_cat_g1v2;


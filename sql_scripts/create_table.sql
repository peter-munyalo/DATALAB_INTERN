-- 14_recreate_table_correct.sql
-- Recreate the table with correct data types

-- Drop the existing table
DROP TABLE IF EXISTS data_intern.online_retail;

-- Recreate with correct data types
CREATE TABLE data_intern.online_retail (
    InvoiceNo VARCHAR(20),      -- Text, can have letters (e.g., "C536379")
    StockCode VARCHAR(20),       -- Text (e.g., "85123A")
    Description TEXT,            -- Text description
    Quantity INTEGER,            -- Number of items
    InvoiceDate TIMESTAMP,       -- Date and time
    UnitPrice DECIMAL(10,2),     -- Price with decimals
    CustomerID INTEGER,          -- Customer number
    Country VARCHAR(100)         -- Country name
);

-- Verify the structure
SELECT 
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'data_intern'
    AND table_name = 'online_retail'
ORDER BY ordinal_position;

-- 15_import_final.sql
-- Final import with correct data types

SET search_path TO data_intern;

-- Import the data
COPY online_retail (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
FROM 'C:/SQL PROJECTS/DATALAB_INTERN/OnlineRetail.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252';

-- Check how many rows were imported
SELECT COUNT(*) AS total_rows FROM online_retail;

-- Preview the data
SELECT * FROM online_retail LIMIT 10;

-- 16_check_empty.sql
-- Check if the table has any data

SET search_path TO data_intern;

SELECT COUNT(*) FROM online_retail;


-- 17_test_import.sql
-- Test import with a small subset of data

SET search_path TO data_intern;

-- Try importing just the first 10 rows
COPY online_retail (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
FROM 'C:/SQL PROJECTS/DATALAB_INTERN/OnlineRetail.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252'
LIMIT 10;

-- Check if any rows were added
SELECT COUNT(*) FROM online_retail;

-- See what was imported
SELECT * FROM online_retail;


-- 17_test_import.sql
-- First, let's check if the table is empty

SET search_path TO data_intern;

SELECT COUNT(*) FROM online_retail;

-- Now let's try a test import with just the CSV header to verify
COPY online_retail (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
FROM 'C:/SQL PROJECTS/DATALAB_INTERN/OnlineRetail.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252';

-- Check the count again
SELECT COUNT(*) FROM online_retail;

-- Look at the actual data
SELECT * FROM online_retail LIMIT 5;

-- 18_check_file.sql
-- Verify the file path is correct

SET search_path TO data_intern;

-- Try a very simple test - read 1 row manually
SELECT * FROM data_intern.online_retail LIMIT 1;


-- 19_explore_data.sql
-- Explore your imported data

SET search_path TO data_intern;

-- 1. Check total number of rows
SELECT COUNT(*) AS total_rows FROM online_retail;

-- 2. Look at first 10 rows
SELECT * FROM online_retail LIMIT 10;

-- 3. Check what countries are in the data
SELECT DISTINCT Country 
FROM online_retail 
ORDER BY Country 
LIMIT 10;

-- 4. Check date range
SELECT 
    MIN(InvoiceDate) AS earliest_date,
    MAX(InvoiceDate) AS latest_date
FROM online_retail;

-- 5. Check for null values
SELECT 
    COUNT(*) AS total,
    COUNT(InvoiceNo) AS has_invoice,
    COUNT(CustomerID) AS has_customer
FROM online_retail;

-- 20_check_sample.sql
-- Look for specific values

SET search_path TO data_intern;

-- Find rows with StockCode starting with 'C'
SELECT InvoiceNo, StockCode, Description, Quantity, UnitPrice, Country
FROM online_retail
WHERE StockCode LIKE 'C%'
LIMIT 5;
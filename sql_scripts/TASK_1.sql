-- 21_first_rows.sql
-- Display first 10 rows of the dataset

SET search_path TO data_intern;

SELECT * 
FROM online_retail 
LIMIT 10;

-- 22_row_column_count.sql
-- Count total rows and columns

SET search_path TO data_intern;

-- Number of rows
SELECT COUNT(*) AS total_rows 
FROM online_retail;

-- Number of columns (we already know it's 8 columns)
SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_schema = 'data_intern' 
    AND table_name = 'online_retail';


-- 23_data_types.sql
-- Show data types of all columns

SET search_path TO data_intern;

SELECT 
    column_name,
    data_type,
    is_nullable
FROM information_schema.columns
WHERE table_schema = 'data_intern' 
    AND table_name = 'online_retail'
ORDER BY ordinal_position; 


-- 24_feature_analysis.sql
-- Analyze features to identify numerical vs categorical

SET search_path TO data_intern;

-- Check unique values count for potential categorical columns
SELECT 
    'InvoiceNo' AS column_name,
    COUNT(DISTINCT InvoiceNo) AS unique_count,
    COUNT(*) AS total_count,
    ROUND(COUNT(DISTINCT InvoiceNo)::NUMERIC / COUNT(*) * 100, 2) AS uniqueness_percentage
FROM online_retail

UNION ALL

SELECT 
    'StockCode',
    COUNT(DISTINCT StockCode),
    COUNT(*),
    ROUND(COUNT(DISTINCT StockCode)::NUMERIC / COUNT(*) * 100, 2)
FROM online_retail

UNION ALL

SELECT 
    'Description',
    COUNT(DISTINCT Description),
    COUNT(*),
    ROUND(COUNT(DISTINCT Description)::NUMERIC / COUNT(*) * 100, 2)
FROM online_retail

UNION ALL

SELECT 
    'Quantity',
    COUNT(DISTINCT Quantity),
    COUNT(*),
    ROUND(COUNT(DISTINCT Quantity)::NUMERIC / COUNT(*) * 100, 2)
FROM online_retail

UNION ALL

SELECT 
    'Country',
    COUNT(DISTINCT Country),
    COUNT(*),
    ROUND(COUNT(DISTINCT Country)::NUMERIC / COUNT(*) * 100, 2)
FROM online_retail

UNION ALL

SELECT 
    'CustomerID',
    COUNT(DISTINCT CustomerID),
    COUNT(*),
    ROUND(COUNT(DISTINCT CustomerID)::NUMERIC / COUNT(*) * 100, 2)
FROM online_retail

ORDER BY column_name;
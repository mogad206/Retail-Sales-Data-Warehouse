
USE RetailSalesDW;
GO

-- 1. Check row counts in all tables
SELECT 'SalesRaw' AS TableName, COUNT(*) AS TotalRows
FROM dbo.SalesRaw

UNION ALL

SELECT 'DimProduct', COUNT(*)
FROM dbo.DimProduct

UNION ALL

SELECT 'DimCustomer', COUNT(*)
FROM dbo.DimCustomer

UNION ALL

SELECT 'DimStore', COUNT(*)
FROM dbo.DimStore

UNION ALL

SELECT 'FactSales', COUNT(*)
FROM dbo.FactSales;

-- 2. Check for sales records with missing product references
SELECT f.*
FROM dbo.FactSales AS f
LEFT JOIN dbo.DimProduct AS p
    ON f.ProductID = p.ProductID
WHERE p.ProductID IS NULL;

-- 3. Check for sales records with missing customer references
SELECT f.*
FROM dbo.FactSales AS f
LEFT JOIN dbo.DimCustomer AS c
    ON f.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- 4. Check for sales records with missing store references
SELECT f.*
FROM dbo.FactSales AS f
LEFT JOIN dbo.DimStore AS s
    ON f.StoreID = s.StoreID
WHERE s.StoreID IS NULL;

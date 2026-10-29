
USE RetailSalesDW;
GO

-- 1. Sales Analysis by City
SELECT
    s.City,
    SUM(f.Quantity) AS TotalQuantity,
    SUM(f.SalesAmount) AS TotalSales
FROM dbo.FactSales AS f
INNER JOIN dbo.DimStore AS s
    ON f.StoreID = s.StoreID
GROUP BY
    s.City
ORDER BY
    TotalSales DESC;

-- 2. Monthly Sales Analysis
SELECT
    YEAR(TRY_CONVERT(date, OrderDate)) AS SalesYear,
    MONTH(TRY_CONVERT(date, OrderDate)) AS SalesMonth,
    COUNT(*) AS NumberOfSales,
    SUM(Quantity) AS TotalQuantity,
    SUM(SalesAmount) AS TotalSales
FROM dbo.FactSales
GROUP BY
    YEAR(TRY_CONVERT(date, OrderDate)),
    MONTH(TRY_CONVERT(date, OrderDate))
ORDER BY
    SalesYear,
    SalesMonth;

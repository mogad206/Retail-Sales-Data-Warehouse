
USE RetailSalesDW;
GO

-- Product Sales Analysis
-- Rank products by total sales revenue

SELECT
    p.ProductName,
    SUM(f.Quantity) AS TotalQuantity,
    SUM(f.SalesAmount) AS TotalSales
FROM dbo.FactSales AS f
INNER JOIN dbo.DimProduct AS p
    ON f.ProductID = p.ProductID
GROUP BY
    p.ProductName
ORDER BY
    TotalSales DESC;

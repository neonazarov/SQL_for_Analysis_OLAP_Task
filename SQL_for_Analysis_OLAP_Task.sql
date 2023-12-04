-- Retrieve the total sales amount for each product category for a specific time period
SELECT ProductCategory, SUM(SalesAmount) AS TotalSales
FROM Sales
WHERE SaleDate BETWEEN 'StartDate' AND 'EndDate'
GROUP BY ProductCategory;

-- Calculate the average sales quantity by region for a particular product
SELECT Region, AVG(SalesQuantity) AS AverageSalesQuantity
FROM Sales
WHERE ProductID = 'YourProductID'
GROUP BY Region;

-- Find the top five customers with the highest total sales amount
SELECT CustomerID, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSales DESC
LIMIT 5;

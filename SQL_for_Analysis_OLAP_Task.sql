CREATE TABLE Sales (
    SaleID SERIAL PRIMARY KEY,
    ProductCategory VARCHAR(255),
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE,
    Region VARCHAR(255),
    SalesQuantity INT,
    ProductID VARCHAR(255),
    CustomerID VARCHAR(255)
);


INSERT INTO Sales (ProductCategory, SalesAmount, SaleDate, Region, SalesQuantity, ProductID, CustomerID)
VALUES 
('Electronics', 200.00, '2023-01-01', 'North', 10, 'P001', 'C001'),
('Furniture', 150.00, '2023-01-02', 'South', 5, 'P002', 'C002'),
('Clothing', 100.00, '2023-01-03', 'East', 20, 'P003', 'C003'),
('Electronics', 300.00, '2023-01-04', 'West', 8, 'P001', 'C004');


-- Retrieve the total sales amount for each product category for a specific time period
SELECT ProductCategory, SUM(SalesAmount) AS TotalSales
FROM Sales
WHERE SaleDate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY ProductCategory;

-- Calculate the average sales quantity by region for a particular product
SELECT Region, AVG(SalesQuantity) AS AverageSalesQuantity
FROM Sales
WHERE ProductID = 'P001'
GROUP BY Region;

-- Find the top five customers with the highest total sales amount
SELECT CustomerID, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSales DESC
LIMIT 5;


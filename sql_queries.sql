-- Total Revenue
SELECT SUM(Quantity * UnitPrice) AS Total_Revenue
FROM online_retail;

-- Total Orders
SELECT COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail;

-- Total Customers
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM online_retail;

-- Top Products by Revenue
SELECT Description,
SUM(Quantity * UnitPrice) AS Revenue
FROM online_retail
GROUP BY Description
ORDER BY Revenue DESC;

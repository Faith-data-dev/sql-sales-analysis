-- Retrieve the first 10 records from the dataset to understand its structure
SELECT * 
FROM sales_data 
LIMIT 10;

-- What is the total sales and total profit generated across all orders?
SELECT 
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM sales_data;

-- Which region has the highest total sales?
SELECT Region,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Show the total sales and profit by product category, ordered by highest sales.
SELECT Category,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- What is the average sales per order for each customer segment? 
SELECT Segment, AVG(Sales) AS Avg_Sales_Per_Order
FROM sales_data
GROUP BY Segment;

-- Retrieve orders with sales greater than 1000
SELECT *
FROM sales_data
WHERE Sales > 1000
ORDER BY Sales DESC;

-- Top 5 sub-categories by total profit
SELECT Sub_Category,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Profit DESC
LIMIT 5;

-- Categories with total profit greater than 10,000
SELECT Category,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
HAVING SUM(Profit) > 10000;

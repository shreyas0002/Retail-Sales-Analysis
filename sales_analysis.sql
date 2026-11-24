create database retail_sales_db;
use retail_sales_db;

show tables;

select * from sales;
select count(*) from sales;

describe sales;

select sum(sales) as total_sales
from sales;

select count(distinct Order_ID) as total_orders
from sales;
select sum(Quantity) as total_quantity
from sales;

select sum(sales) / count(distinct Order_ID) as average_order_value
from sales;

select
	Category,
    sum(sales) as total_sales
from sales
group by Category
order by total_sales desc;

SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Sales_Month;

-- Find the best-performing month
SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Monthly_Sales DESC
LIMIT 1;
 
-- Find the worst-performing month
SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Monthly_Sales ASC
LIMIT 1;

-- Order Status and Payment Mode Analysis.
-- analyze order status
SELECT
    Order_Status,
    COUNT(*) AS Total_Orders,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Order_Status
ORDER BY Total_Orders DESC;

-- Analyze payment modes
SELECT
    Payment_Mode,
    COUNT(*) AS Total_Orders,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Payment_Mode
ORDER BY Total_Orders DESC;

-- Calculate completed-order sales
SELECT
    SUM(Sales) AS Completed_Sales
FROM sales
WHERE Order_Status = 'Completed';

-- Advanced Business Queries
-- Find the top 10 customers by sales
SELECT
    Customer_ID,
    SUM(Sales) AS Total_Sales
FROM sales
WHERE Customer_ID != 'Unknown'
GROUP BY Customer_ID
ORDER BY Total_Sales DESC
LIMIT 10;

-- Find products with low sales
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM sales
WHERE Product != 'Unknown'
GROUP BY Product
ORDER BY Total_Sales ASC
LIMIT 5;

-- Calculate sales by category and region
SELECT
    Category,
    Region,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Category, Region
ORDER BY Total_Sales DESC;


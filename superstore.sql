--lets view the entire table
SELECT * FROM [dbo].[Superstore 2023];

--then lets select order id, order date and sales from the table

SELECT order_id, order_date, sales FROM [Superstore 2023];

--lets look at data for consumers living in the eastern region

SELECT * FROM [dbo].[Superstore 2023]
WHERE Segment = 'Consumer' AND Region = 'East';

--lets sort the rows from the table sales based on some criteria, 
--such as order_date in ascending order or sales in descending order,
--lets use the ORDER BY clause in this query

SELECT * FROM [dbo].[Superstore 2023] ORDER BY order_date ASC, sales DESC;

--lets find the total sales and profit by category
SELECT Category, Sub_Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM [Superstore 2023]
GROUP BY Category, Sub_Category
ORDER BY Category, Sub_Category;

--lets look at the top 10 customers by sales and profit
SELECT TOP 10 Customer_Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM [Superstore 2023]
GROUP BY Customer_Name
ORDER BY Total_Sales DESC, Total_Profit DESC;

--lets  find the average discount and profit by region and segment
SELECT Region, Segment, AVG(Discount) AS Average_Discount, AVG(Profit) AS Average_Profit
FROM [Superstore 2023]
GROUP BY Region, Segment
ORDER BY Region, Segment;





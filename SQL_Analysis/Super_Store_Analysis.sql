CREATE DATABASE super_store_analysis;

USE super_store_analysis;

SELECT * FROM calender_file;

SELECT * FROM sales LIMIT 10;

# DESCRIBE Data

DESCRIBE calender_file;

DESCRIBE sales;

# SAFE MODE ON

SET SQL_SAFE_UPDATES = 0;

# First Tables Update Columns Data

UPDATE sales 
SET Ship_Date = STR_TO_DATE(Ship_Date, "%d-%m-%Y");

ALTER TABLE sales 
MODIFY Ship_Date DATE;

# Second Table 


UPDATE sales 
SET Order_Date = STR_TO_DATE(Order_Date, "%d-%m-%Y");

ALTER TABLE sales
MODIFY Order_Date DATE;


UPDATE calender_file
SET Date = STR_TO_DATE(Date, "%d-%m-%Y");

ALTER TABLE calender_file
MODIFY Date DATE;



# Q1. Calculate the year-over-year (YoY) growth in sales and profit. Display a year-wise comparison.

SELECT c.Year, ROUND(SUM(s.Sales),2) AS Total_Sales,
			 ROUND(SUM(s.Profit),2) AS Total_Profit
FROM Sales AS s
JOIN Calender_file AS c
ON s.Order_Date = c.Date
GROUP BY c.Year
ORDER BY Year;



# Q2. Identify which day of the week records the highest sales and which day has the highest number of product returns.

SELECT c.Day_Name, ROUND(SUM(sales),2) AS Total_Sales,
					    SUM( CASE WHEN s.Returned = "YES" THEN 1 ELSE 0 END) AS Total_Return
FROM sales AS s
JOIN calender_file AS c
ON s.Order_Date = c.Date
GROUP BY c.Day_Name
ORDER BY Total_Sales DESC;


# Q3. Determine the best-performing quarter (e.g., 2017 Q4) based on the highest total sales.

SELECT c.Year,
	   c.`Quarter(Q)`,
		ROUND(SUM(s.sales),2) AS Total_Sales
FROM sales AS s
JOIN calender_file AS c
ON c.Date = s.Order_Date
GROUP BY c.Year, c.`Quarter(Q)`
ORDER BY Total_Sales DESC 
LIMIT 1;


# Q4. Identify the categories and sub-categories where excessive discounts resulted in negative profit.

SELECT Category, `Sub-Category`,
		ROUND(SUM(Sales),2) AS Total_Sales,
        ROUND(AVG(Discount)*100,2) AS Average_Discoount_PCT,
        ROUND(SUM(Profit),2) AS Total_Profit
FROM sales 
GROUP BY  Category, `Sub-Category`
ORDER BY Total_Profit;



# Q5. Calculate the return rate (%) for each region and identify the region with the highest product return rate.

SELECT Region, COUNT(*) AS Total_Orders,
			   SUM(CASE WHEN Returned = "Yes" THEN 1 ELSE 0 END) AS Return_Orders,
               ROUND((SUM(CASE WHEN Returned = "Yes" THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS Return_Rate_PTC
FROM sales 
GROUP BY Region 
ORDER BY Return_Rate_PTC DESC;



# 6. Identify the top 10 customers who generated the highest overall losses for the company.

SELECT Customer_ID, Customer_Name,
			ROUND(SUM(Sales),2) AS Total_Sales,
            ROUND(SUM(Profit),2) AS Total_Loss
FROM sales 
GROUP BY Customer_ID, Customer_Name
HAVING Total_Loss<0
ORDER BY Total_Loss
LIMIT 10;



# 7. Shipping Delay Analysis (Calculate the average delivery time (in days) for each shipping mode.)


SELECT Ship_Mode,
		ROUND(AVG(DATEDIFF(Ship_Date, Order_Date)),2) AS AVG_Shipping_Day
FROM sales
GROUP BY Ship_Mode
ORDER BY AVG_Shipping_Day;


# 8. Analyze whether late deliveries (more than 3 days) lead to a higher product return rate by comparing on-time deliveries with late deliveries.

SELECT
    CASE
        WHEN DATEDIFF(Ship_Date, Order_Date) > 3 THEN 'Late'
        ELSE 'On_Time'
    END AS Delivery_Status,
    COUNT(*) AS Total_Orders,
    SUM(Returned = 'Yes') AS Return_Orders,
    ROUND(SUM(Returned = 'Yes') * 100.0 / COUNT(*), 2) AS Return_Rate_PCT
FROM sales
GROUP BY Delivery_Status;



# 9. Salesperson Performance (Identify the salesperson with the highest sales and the salesperson with the lowest profit margin (%).)

SELECT 
	Retail_Sales_People,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margine_PCT
FROM sales 
GROUP BY Retail_Sales_People
ORDER BY Total_Sales;


# Identify customers who placed orders in 2015 or 2016 but did not place any orders in 2017.

SELECT DISTINCT s.Customer_ID, s.Customer_Name, s.Product_Name, s.Order_Date
FROM sales s
JOIN calender_file c
ON s.Order_Date = c.Date
WHERE c.Year IN (2015, 2016)
AND s.Customer_ID NOT IN (
    SELECT s.Customer_ID
    FROM sales s
    JOIN calender_file c
    ON s.Order_Date = c.Date
    WHERE c.Year = 2017
);
	

    
    

               













CREATE TABLE PUBLIC.superstore(
	row_id int,
	order_id varchar(100),
	order_date date,
	ship_date date,
	ship_mode varchar(100),
	customer_id varchar(100),
	customer_name varchar(100),
	segment varchar(100),
	country varchar(100),
	city varchar(100),
	state varchar(100),
	postal_code int,
	region varchar(100),
	product_id varchar(100),
	category varchar(100),
	sub_category varchar(100),
	product_name varchar(255),
	sales decimal(12,5),
	quantity int,
	discount decimal(5,2),
	profit decimal(12,5)
);

--Copying the data from the dataset

COPY public.superstore FROM 'C:\Users\Public\superstore_dataset_csv.csv' DELIMITER ',' CSV HEADER;

-- Checking the table once before starting

select * from superstore limit 5;

--1.What are total sales and total profits of each year?

SELECT 
	EXTRACT(year FROM order_date) AS year,
	ROUND(SUM(sales),2) AS TotalSales,
	ROUND(SUM(profit),2) AS TotalProfit
FROM superstore
GROUP BY year;

--2.What are the total profits and total sales per quarter?

SELECT 
	EXTRACT(YEAR FROM order_date) AS year,
	CASE
		WHEN EXTRACT(MONTH FROM order_date) IN (1,2,3) THEN 'Quarter-1'
		WHEN EXTRACT(MONTH FROM order_date) IN (4,5,6) THEN 'Quarter-2'
		WHEN EXTRACT(MONTH FROM order_date) IN (7,8,9) THEN 'Quarter-3'
		ELSE 'Quarter-4'
	END AS quarter,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY year, quarter
ORDER BY year, quarter

--3.What region generates the highest sales and profits ?

SELECT
	region, 
	ROUND(SUM(sales),2) AS total_sales, 
	ROUND(SUM(profit),2) AS total_profits,
	ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin_percentage
FROM superstore
GROUP BY region
ORDER BY total_profits DESC;


--4.What state and city brings in the highest sales and profits ?

SELECT 
	State, 
	SUM(Sales) as Total_Sales,
	SUM(Profit) as Total_Profits,
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_mar
FROM superstore
GROUP BY State
ORDER BY Total_Profits DESC
LIMIT 10;

SELECT 
	State, 
	SUM(Sales) as Total_Sales, 
	SUM(Profit) as Total_Profits
FROM superstore
GROUP BY State
ORDER BY Total_Profits ASC
LIMIT 10;

SELECT 
	City, 
	SUM(Sales) as Total_Sales, 
	SUM(Profit) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_marg
FROM superstore
GROUP BY City
ORDER BY Total_Profits DESC
LIMIT 10

SELECT 
	City, 
	SUM(Sales) as Total_Sales, 
	SUM(Profit) as Total_Profits
FROM superstore
GROUP BY City
ORDER BY Total_Profits ASC
LIMIT 10;

--5.The relationship between discount and sales and the total discount per category

SELECT 
	Discount,
	AVG(Sales) AS Avg_Sales
FROM superstore
GROUP BY Discount
ORDER BY Discount;

SELECT
	category,
	ROUND(SUM(discount),2) AS total_discount
FROM superstore
GROUP BY category
ORDER BY total_discount DESC;

SELECT
	category,
	sub_category,
	ROUND(SUM(discount),2) AS total_discount
FROM superstore
GROUP BY category, sub_category
ORDER BY total_discount DESC


--6.What category generates the highest sales and profits in each region and state?

SELECT
	category,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit,
	ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin
FROM superstore
GROUP BY category
ORDER BY total_profit DESC

-- state wise top performers
SELECT
	region,
	category,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY region, category
ORDER BY total_profit DESC

-- statewise bottom performers
SELECT
	state,
	category,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY state, category
ORDER BY total_profit ASC;

--7.What subcategory generates the highest sales and profits in each region and state ?

SELECT
	state,
	sub_category,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY state, sub_category
ORDER BY total_profit ASC


--8.What are the names of the products that are the most and least profitable to us?


SELECT
	product_name,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit ASC


--9.What segment makes the most of our profits and sales ?


SELECT
	segment,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC

--10.How many customers do we have (unique customer IDs) in total and how much per region and state?


SELECT 
COUNT(DISTINCT customer_id) AS total_customers
FROM superstore;

SELECT
	state,
	COUNT(DISTINCT customer_id) AS total_customers
FROM superstore
GROUP BY state
ORDER BY total_customers ASC;

--11.Customer rewards program

SELECT 
	customer_id, 
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 15

--12.Average shipping time per class and in total

SELECT 
	ROUND(AVG(ship_date - order_date),1) AS avg_shipping_time
FROM superstore



SELECT
	ship_mode,
	ROUND(AVG(ship_date - order_date),1) AS avg_shipping_time
FROM superstore
GROUP BY ship_mode
ORDER BY avg_shipping_time






























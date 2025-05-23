USE [Data with barbara2];
-- Explore all Countries our customers come from
select distinct country from [gold.dim_customers]

-- Explore All Categories "The major Divisions"
Select Distinct category, subcategory, product_name from [gold.dim_products]

--Find the Fast and Last order date order range in year and month
Select 
	Min(order_date) as fast_order_date, 
	MAX(order_date) as Last_order_date, 
	DATEDIFF(YEAR, MIN(order_date), max(order_date)) as Order_range_year,
	DATEDIFF(MONTH, MIN(order_date), max(order_date)) as Order_range_month
	from [gold.fact_sales]

-- Find the youngest and the oldest customer
Select
	datediff(year, MIN(birthdate), GETDATE()) as Oldest_customer,
	datediff(year, Max (birthdate), GETDATE()) as youngest_customer
	from [gold.dim_customers]
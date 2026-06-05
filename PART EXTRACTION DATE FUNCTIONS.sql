-- DATE FUNCTIONS
-- YEAR,MONTH,DAY
/*SELECT
OrderID,
CreationTime,
YEAR(CreationTime) YEAR,
MONTH(CreationTime) MONTH,
DAY(CreationTime) DAY
FROM Sales.Orders
*/

/*
SELECT
OrderID,
CreationTime,
--EOMONTH EXAMPLES
EOMONTH(CreationTime) EndOfMonth,
CAST(DATETRUNC(month,CreationTime) AS DATE) StartOfMonth,
--DATETRUNC EXAMPLES
DATETRUNC(year,CreationTime) year_dt,
DATETRUNC(day,CreationTime) Day_dt,
DATETRUNC(minute,CreationTime) Minute_dt,
-- DATENAME() Examples
DATENAME(month, CreationTime) Month_dn,
DATENAME(weekday, CreationTime) Weekday_dn,
DATENAME(day, CreationTime) day_dn,
-- DATEPART() Examples
DATEPART(year, CreationTime) Year_dp,
DATEPART(month, CreationTime) Month_dp,
DATEPART(day, CreationTime) Day_dp,
DATEPART(hour, CreationTime) Hour_dp,
DATEPART(quarter, CreationTime) Quarter_dp,
DATEPART(weekday, CreationTime) Weekday_dp,
DATEPART(week, CreationTime) Week_dp,
YEAR(CreationTime) YEAR,
MONTH(CreationTime) MONTH,
DAY(CreationTime) DAY
FROM Sales.Orders
*/

--DATA AGGREGATION
--HOW MANY ORDERS WE PLACED THIS YEAR?
/*SELECT
YEAR(OrderDate),
COUNT(*) NOOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

--HOW MANY ORDERS WE PLACED THIS MONTH?
SELECT
DATENAME(MONTH,OrderDate) AS OrderDate,
COUNT(*) NOOfOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH,OrderDate)
*/

--DATA FILTERING
--SHOW ALL ORDERS THAT WERE PLACED DURING THE MONTH OF FEBRUARY
/*SELECT
* 
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2*/

/* MULTI JOIN 
Using Sales DB Retrieve a list of orders ,along with the related 
customers,product,and employee details 
For each order display 

-ORDER ID
-CUSTOMER NAME
-PRODUCT NAME
-SALES AMOUNT
-PRODUCT PRICE
-SALES PERSONS NAME
*/
SELECT 
o.OrderID,
o.Sales,
c.FirstName AS CustomerFirstName,
c.LastName AS CustomerLastName,
p.Product AS ProductName,
p.Price,
e.FirstName AS EmployeeFirstName,
e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
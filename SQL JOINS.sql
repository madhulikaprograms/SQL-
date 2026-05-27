/* NO JOIN
 Retrieve all data from customers and orders as seperate results 
SELECT * FROM customers;
SELECT * FROM orders;
*/



/* INNER JOIN
Get all customers along with their orders but only for customers who have placed an order 
*/
/*SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales 
FROM  customers AS c
 INNER JOIN orders AS o
 ON c.id = o.customer_id*/


 /* LEFT JOIN 
Get all customers along with their 
orders including those without orders .*/
/*SELECT 
  c.id,
  c.first_name,
  o.order_id,
  o.sales
FROM customers AS c
LEFT JOIN orders AS o 
ON c.id = customer_id  */

/* Get all customers along with their orders,
including orders without matching customers */
SELECT 
  c.id,
  c.first_name,
  o.order_id,
  o.sales
FROM customers AS c
RIGHT JOIN orders AS o 
ON c.id = customer_id
 
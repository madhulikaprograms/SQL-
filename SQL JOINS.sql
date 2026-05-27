/* NO JOIN
 Retrieve all data from customers and orders as seperate results 
 */
SELECT * FROM customers;
SELECT * FROM orders;


/* INNER JOIN
Get all customers along with their orders but only for customers who have placed an order 
*/
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales 
FROM  customers AS c
 INNER JOIN orders AS o
 ON c.id = o.customer_id


 /* LEFT JOIN 
Get all customers along with their 
orders including those without orders .*/
SELECT 
  c.id,
  c.first_name,
  o.order_id,
  o.sales
FROM customers AS c
LEFT JOIN orders AS o 
ON c.id = customer_id  

/*  RIGHT JOIN Get all customers along with their orders,
including orders without matching customers */
SELECT 
  c.id,
  c.first_name,
  o.order_id,
  o.sales
FROM customers AS c
RIGHT JOIN orders AS o 
ON c.id = o.customer_id 

/* Doing the same task as LEFT JOIN instead of RIGHT JOIN */
SELECT 
  c.id,
  c.first_name,
  o.order_id,
  o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id 

/* FULL JOIN Get all the customers and all orders even if there is no match */
 SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
    FROM customers AS c
    FULL JOIN orders AS o
    ON c.id = o.customer_id 

 /* LEFT ANTI JOIN Get all the customers who havent placed any order*/
 SELECT * 
 FROM customers AS c
 LEFT JOIN orders AS o
 ON c.id = o.customer_id
 WHERE o.customer_id IS NULL 

/* RIGHT ANTI JOIN Get all orders without matching customers */
SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

/* DOING with the left join */
SELECT * 
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL 


/* FULL ANTI JOIN  Find the customers without orders and orders
without customers */
 SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL 


/* Get all customers along with their orders but only for customers
who have placed an order (without using INNER JOIN) */

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS  NOT NULL AND o.customer_id IS  NOT NULL


/* Generate all possible combinations of customers and orders */ 
SELECT *
FROM customers 
CROSS JOIN orders


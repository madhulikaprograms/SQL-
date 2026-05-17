/* Retrieve all customers from either Germany or USA */
SELECT * FROM customers
WHERE country = 'Germany' OR country = 'USA'

-- By using IN operator 
SELECT * FROM customers
WHERE country IN('Germany','USA')

-- By using NOT IN operator
SELECT * FROM customers
WHERE country NOT IN('Germany')


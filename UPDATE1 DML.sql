/* Change the score of customer with 
ID 10 to 0 and update the country to 'uk'
*/
UPDATE customers
SET score = 0,
    country = 'UK'
WHERE id = 10
SELECT * FROM customers  

/* Update all customers with 
a NULL score by setting their 
score to 0 */

UPDATE customers
SET score = 0
WHERE score IS NULL

SELECT * 
FROM customers

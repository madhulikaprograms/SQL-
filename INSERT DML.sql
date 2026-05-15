INSERT INTO customers(id, first_name,country,score)
VALUES
       (8,'USA','Max',NULL),
       (9,'Andreas','Germany',NULL),
       (10,'Sahra',NULL,NULL)
SELECT * FROM customers

/* There are some certain rules to 
follow 
1. you need to maintain same columns and values 
2. you can add null values 
3. but you cannot null values to the id as it is identification or a primary 
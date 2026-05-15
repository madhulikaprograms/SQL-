-- Insert data from 'customers' table into 'persons'
/* Simulataneously we check the data from customers table and we insert this
into the persons table to get the exact result */
INSERT INTO persons(id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unkown' -- add a static value to match the required tables
FROM customers
SELECT * FROM persons
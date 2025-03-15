SELECT email FROM customers;

SELECT c.email FROM customers AS c
INNER JOIN orders AS o ON c.id = o.customer_id;

SELECT c.email FROM customers AS c
WHERE c.id IN (
    SELECT o.customer_id FROM orders AS o 
);

SELECT id, first_name
FROM customers
WHERE first_name NOT IN('Max', 'Manu');

SELECT email
FROM customers
WHERE id IN(
    SELECT customer_id FROM orders
);
/*

SELECT *
FROM sales;

SELECT 
    customer_name, 
    product_name, 
    volume, 
    date_created 
FROM sales;

SELECT 
    date_created,
    customer_name, 
    product_name, 
    volume 
FROM sales; 

*/

SELECT
    'Hello World',
    15000,
    date_created,
    customer_name, 
    product_name, 
    volume / 1000 AS total_sales
FROM sales;
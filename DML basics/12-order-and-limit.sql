SELECT * FROM sales
ORDER BY volume DESC
LIMIT 10;

SELECT * FROM sales
ORDER BY volume ASC
LIMIT 10;

SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 3;

SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC, customer_name -- If you use two or more cols for ordering they will be taked in consideration only if there are the same values...
LIMIT 3;


SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 5
OFFSET 3;
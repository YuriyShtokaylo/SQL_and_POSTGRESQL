SELECT * FROM sales
WHERE date_fulfilled IS NOT NULL;

SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5; -- IT works because it DATES

/* -- This is for case if we would use TIMESTAMP
SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5; -- This would work if that was TIMESTAMPS
*/
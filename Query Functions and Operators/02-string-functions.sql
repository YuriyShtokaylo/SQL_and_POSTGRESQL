SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name 
FROM memberships;

-- In PostgreSQL you also have operator || for concatination
SELECT 
    first_name || ' ' || last_name AS full_name 
FROM memberships;

SELECT 
    CONCAT('$ ', price) AS PRICE 
FROM memberships;

SELECT * FROM memberships
WHERE LENGTH(last_name) < 4;

-- DELETE FROM memberships WHERE id = 4 OR id = 5;

SELECT LENGTH(GENDER) FROM memberships;
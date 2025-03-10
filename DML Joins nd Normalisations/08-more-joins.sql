-- My solution
SELECT c.name AS city_name, CONCAT(u.first_name, ' ', u.last_name) AS full_name
FROM cities AS C
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u ON a.id = u.address_id;

-- All cities
SELECT c.name AS city_name
FROM cities AS c;

-- Cities with addresses
SELECT c.name AS city_name, a.street, a.house_number
FROM cities AS c
INNER JOIN addresses AS a ON c.id = a.city_id;

--Intermedia Solution
SELECT c.name AS city_name, a.street, a.house_number, u.first_name, u.last_name
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u ON u.address_id = a.id
ORDER BY c.name;

--Solution
SELECT c.name AS city_name, u.first_name, u.last_name
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u ON u.address_id = a.id;
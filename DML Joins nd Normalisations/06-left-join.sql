SELECT *
FROM users AS u
LEFT JOIN addresses AS a ON a.id = u.address_id; 

SELECT *
FROM addresses AS a
LEFT JOIN users AS u ON u.address_id = a.id; 

SELECT *
FROM addresses AS a
LEFT JOIN users AS u ON u.address_id = a.id
LEFT JOIN cities AS c ON c.id = a.city_id; 

SELECT *
FROM addresses AS a
LEFT JOIN users AS u ON u.address_id = a.id
INNER JOIN cities AS c ON c.id = a.city_id; 

SELECT *
FROM users AS u
RIGHT JOIN addresses AS a ON u.address_id = a.id
LEFT JOIN cities AS c ON c.id = a.city_id; 
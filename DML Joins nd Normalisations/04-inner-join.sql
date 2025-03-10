/* SELECT u.id, first_name, last_name, street, house_number, name AS city
FROM users AS u
INNER JOIN addresses AS a ON address_id = a.id
INNER JOIN cities as c ON city_id = c.id; */

/* SELECT u.id, first_name, last_name, street, house_number, city_id
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id; */

SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;
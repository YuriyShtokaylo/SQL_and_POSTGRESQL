SELECT first_name LIKE 'Max', first_name FROM memberships;

SELECT first_name LIKE 'Ma', first_name FROM memberships; -- THE same as = 

SELECT first_name LIKE 'Ma%', first_name FROM memberships;

SELECT first_name LIKE 'ma%', first_name FROM memberships;

SELECT first_name ILIKE 'ma%', first_name FROM memberships; -- ILIKE is case insensitive instiad of LIKE which is casesensitive!

SELECT first_name LIKE '%a%', first_name FROM memberships; -- % - I don't know number of characters

SELECT first_name LIKE '%u%', first_name FROM memberships;

SELECT first_name LIKE '_o%', first_name FROM memberships; -- _ - stub for one character

SELECT first_name LIKE '__o%', first_name FROM memberships;

SELECT first_name
FROM memberships
WHERE first_name LIKE 'J____%';
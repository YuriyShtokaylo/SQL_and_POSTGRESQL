SELECT price * billing_frequency AS annual_revenue 
FROM memberships;

SELECT SUM(price * billing_frequency) AS annual_revenue 
FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() TRUNCATE() MySql

SELECT CEIL(consumption), consumption
FROM memberships;

SELECT FLOOR(consumption), consumption
FROM memberships;

SELECT ROUND(consumption), consumption
FROM memberships;

SELECT ROUND(consumption, 1), consumption
FROM memberships;

SELECT TRUNC(consumption), consumption
FROM memberships;

SELECT 
    consumption AS ORIGINAL, 
    CEIL(consumption) AS CEIL_biger_int, 
    FLOOR(consumption) AS FLOOR_lower_int, 
    ROUND(consumption) AS ROUND_just_approximal_int, 
    ROUND(consumption, 1) AS ROUND_1_lapproximal_with_one_digit_after_dot, 
    TRUNC(consumption)AS TRUNC_just_remove_everything_after_dot, 
    consumption AS ORIGINAL
FROM memberships;
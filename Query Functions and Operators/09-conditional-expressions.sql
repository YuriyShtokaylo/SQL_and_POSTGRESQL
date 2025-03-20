SELECT amount_billed, 
    CASE WHEN amount_billed > 30 THEN 'Good Day'
        WHEN amount_billed > 15 THEN 'Normal Day'
        ELSE 'Bad Day'
    END 
FROM orders;

-- ORDER MATTERS

SELECT amount_billed, 
    CASE WHEN amount_billed > 15 THEN 'Normal Day'
        WHEN amount_billed > 30 THEN 'Good Day'
        ELSE 'Bad Day'
    END 
FROM orders;

SELECT amount_billed, 
    CASE WHEN amount_billed > 15 AND amount_billed <= 30 THEN 'Normal Day'
        WHEN amount_billed > 30 THEN 'Good Day'
        ELSE 'Bad Day'
    END 
FROM orders;

SELECT 
    day_index,
    CASE WHEN day_index = 1 THEN 'Monday'
        WHEN day_index = 2 THEN 'Tuesday'
        WHEN day_index = 3 THEN 'Wendday'
        WHEN day_index = 4 THEN 'Thersday'
        WHEN day_index = 5 THEN 'Friday'
        WHEN day_index = 6 THEN 'Saturday'
        WHEN day_index = 7 THEN 'Sunday'
        ELSE 'ERROR'
    END,
    last_checkin::TIMESTAMP::TIME 
FROM (
    SELECT 
    EXTRACT(ISODOW FROM last_checkin) AS day_index, 
    last_checkin 
    FROM memberships
);

-- SOLUTION FOR MySQL
/* SELECT weekday_nr,
    CASE WHEN weekday_nr = 1 THEN 'Monday'
        WHEN weekday_nr = 2 THEN 'Tuesday'
        WHEN weekday_nr = 3 THEN 'Wednesday'
        WHEN weekday_nr = 4 THEN 'Thursday'
        WHEN weekday_nr = 5 THEN 'Friday'
        WHEN weekday_nr = 6 THEN 'Saturday'
        ELSE 'Sunday'
    END
FROM (
    SELECT WEEKDAY(last_checkin) + 1 AS weekday_nr
    FROM memberships
) AS weekday_numbers; */
SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
    SELECT MIN(sums) 
    FROM (
        SELECT booking_date, SUM(amount_billed) AS sums
        FROM bookings
        GROUP BY booking_date
    ) AS subquery
);
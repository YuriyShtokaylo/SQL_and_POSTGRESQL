SELECT EXTRACT(ISODOW FROM last_checkin) AS week_day_monday_liding_sunday_is_7, EXTRACT(DOW FROM last_checkin) AS week_day_sunday_liding_and_is_0, EXTRACT(MONTH FROM last_checkin) AS month_num, EXTRACT(DAY FROM last_checkin) AS day_name, last_checkin FROM memberships; -- DOW works only for Postgrs
-- SELECT WEEKDAY(last_checkin), last_checkin FROM memberships; -- THIS IS FOR MYSQL
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME) FROM memberships -- THIS IS FOR MYSQL
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME FROM memberships;
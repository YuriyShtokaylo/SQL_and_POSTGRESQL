SELECT last_checkout - last_checkin FROM memberships; -- This works good in Postgres(Intervals) for MySQL you will get just number of seconds past... THIS FOR TIMESTAMPs

-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) FROM memberships; -- This works for MySQL
SELECT membership_end - membership_start FROM memberships; -- For DATEs it returns difference in days(For postgres)
-- SELECT DATEDIFF(membership_end, membership_start) FROM memberships; -- This for MySQL
-- SELECT DATEDIFF(NOW(), membership_start) FROM memberships; -- For MySQL
SELECT NOW() - membership_start FROM memberships;
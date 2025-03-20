SELECT membership_start + 7, membership_start FROM memberships; -- For postgres
SELECT membership_start - 7, membership_start FROM memberships; -- For postgres
SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start FROM memberships; -- For postgres
SELECT (membership_start - INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start FROM memberships; -- For postgres
SELECT (membership_start + INTERVAL '7 YEAR')::TIMESTAMP::DATE, membership_start FROM memberships; -- For postgres
SELECT (membership_start - INTERVAL '7 YEAR')::TIMESTAMP::DATE, membership_start FROM memberships; -- For postgres
-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start FROM memberships -- For MySQL
-- SELECT DATE_ADD(membership_start, INTERVAL 7 MONTH), membership_start FROM memberships -- For MySQL
-- SELECT DATE_ADD(membership_start, INTERVAL 7 YEAR), membership_start FROM memberships -- For MySQL
-- SELECT DATE_SUB(membership_start, INTERVAL 7 DAY), membership_start FROM memberships -- For MySQL
-- SELECT DATE_SUB(membership_start, INTERVAL 7 MONTH), membership_start FROM memberships -- For MySQL
-- SELECT DATE_SUB(membership_start, INTERVAL 7 YEAR), membership_start FROM memberships -- For MySQL
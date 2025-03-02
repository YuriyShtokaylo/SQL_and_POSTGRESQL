ALTER TABLE employers
-- ALTER COLUMN yearly_revenu SET DATA TYPE FLOAT; -- Postgress
MODIFY COLUMN yearly_revenu FLOAT; -- MySQL

ALTER TABLE users
-- ALTER COLUMN full_name SET DATA TYPE VARCHAR(300); -- Postgress
MODIFY COLUMN full_name VARCHAR(300); -- MySQL
ALTER TABLE users
/* ALTER COLUMN full_name SET NOT NULL,          --
ALTER COLUMN current_status SET NOT NULL,     -- Postgress
ALTER COLUMN yearly_salary SET DEFAULT NULL;  -- */
MODIFY COLUMN full_name  VARCHAR(300) NOT NULL,                                          --
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL,   --  MySQL
MODIFY COLUMN yearly_salary INT DEFAULT NULL;                                            --

ALTER TABLE employers
/* ALTER COLUMN company_name SET NOT NULL,
ALTER COLUMN yearly_revenu SET DEFAULT 0.0; */
MODIFY COLUMN company_name  VARCHAR(300) NOT NULL,
MODIFY COLUMN yearly_revenu FLOAT DEFAULT 0.0;

ALTER TABLE conversations
/* ALTER COLUMN user_name SET NOT NULL,
ALTER COLUMN employer_name SET NOT NULL; */
MODIFY COLUMN user_name  VARCHAR(300) NOT NULL,
MODIFY COLUMN employer_name  VARCHAR(300) NOT NULL;
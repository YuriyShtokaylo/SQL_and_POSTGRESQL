ALTER TABLE users
/* ALTER COLUMN full_name SET NOT NULL,          --
ALTER COLUMN current_status SET NOT NULL,     -- Postgress
ALTER COLUMN yearly_salary SET DEFAULT NULL;  -- */
MODIFY COLUMN full_name  VARCHAR(300) NOT NULL,                       --
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL,   --  MySQL
MODIFY COLUMN yearly_salary INT DEFAULT NULL;                             --
CREATE TABLE IF NOT EXISTS users (
    full_name VARCHAR(200),
    yearly_salary INT,
    `status` ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
);
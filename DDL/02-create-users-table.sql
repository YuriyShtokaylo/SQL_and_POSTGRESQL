-- Postgress + ENUM => We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE IF NOT EXISTS users (
    full_name VARCHAR(200),
    yearly_salary INT,
    --`status` ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
    current_status employment_status
);
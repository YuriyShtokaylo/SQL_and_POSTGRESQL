-- Postgress + ENUM => We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE IF NOT EXISTS users (
    full_name VARCHAR(200) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0) DEFAULT NULL,
    -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
    current_status employment_status
);
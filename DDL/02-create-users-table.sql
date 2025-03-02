-- Postgress + ENUM => We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgress - you can use SERIAL for MySQL - ONE IMPORTANT NOTE - type will be BIGINT not INT!
    full_name VARCHAR(200) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0) DEFAULT NULL,
    -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
    current_status employment_status
);
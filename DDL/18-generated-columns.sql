DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS conversations;

-- Postgress + ENUM => We have to create a custom type first
-- CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed'); -- You should run this just ones. It is stored in DB!

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgress - you can use SERIAL for MySQL - ONE IMPORTANT NOTE - type will be BIGINT not INT!
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name,' ',last_name)), -- Not recomended but possible in MySQL
    -- full_name VARCHAR(300) NOT NULL, -- Old way
    yearly_salary INT CHECK (yearly_salary > 0) DEFAULT NULL,
    current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
    -- current_status employment_status
);

CREATE TABLE employers (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgress
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenu FLOAT CHECK (yearly_revenu > 0), -- Approximation[ Allowed: 123.12, 12.1 | Not allowed: 1234.2 | 1.123 =Rounde=> 1.12 ]
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- Postgress
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (first_name, last_name, yearly_salary, current_status) 
VALUES ('Yuriy', 'Shtokaylo', 23000, 'self-employed');
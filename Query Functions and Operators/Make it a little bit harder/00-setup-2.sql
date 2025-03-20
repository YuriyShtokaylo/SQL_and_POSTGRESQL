CREATE TYPE GENDERS AS ENUM ('male', 'female');

CREATE TABLE IF NOT EXISTS membership_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(5, 2) NOT NULL,
    billing_frequency INT NOT NULL
);

CREATE TABLE IF NOT EXISTS memberships (
    id SERIAL PRIMARY KEY,
    membership_start DATE DEFAULT CURRENT_DATE NOT NULL,
    membership_end DATE, 
    last_checkin TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    membership_type_id INT REFERENCES membership_types
);

CREATE TABLE IF NOT EXISTS members (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300),
    last_name VARCHAR(300),
    gender GENDERS,
    membership_id INT REFERENCES memberships
);
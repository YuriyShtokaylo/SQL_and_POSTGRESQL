DROP TABLE projects_employees;

DROP TABLE projects;

DROP TABLE intranet_accounts;

DROP TABLE employees;

DROP TABLE teams;

DROP TABLE company_buildings;

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    email VARCHAR(200) PRIMARY KEY REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

-- Intermediate table => n:n
CREATE TABLE projects_employees (
    employee_id INT,
    project_id INT REFERENCES projects ON DELETE CASCADE,
    PRIMARY KEY(employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES employees ON DELETE CASCADE
    -- FOREIGN KEY (employee_id, project_id) REFERENCES employees ON DELETE ...
);

INSERT INTO company_buildings (name)
VALUES 
  ('Main Building'), 
  ('Research Lab'), 
  ('Darkroom');

INSERT INTO teams (name, building_id)
VALUES 
  ('Admin', 1), 
  ('Data Analysts', 3),
  ('R&D', 2);

INSERT INTO employees 
  (first_name, last_name, birthdate, email, team_id)
VALUES 
  ('Julie', 'Barnes', '1988-10-01', 'julie@test.com', 3),
  ('Max', 'Schwarz', '1989-06-10', 'max@test.com', 1),
  ('Manuel', 'Lorenz', '1987-01-29', 'manu@test.com', 2),
  ('Michael', 'Smith', '1977-05-12', 'michael@test.com', 2);

INSERT INTO intranet_accounts (email, password)
VALUES 
  ('max@test.com', 'abcae1'),
  ('manu@test.com', 'fdasfdas1'),
  ('julie@test.com', 'adsfsaf3'),
  ('michael@test.com', 'adsfsaf3');

INSERT INTO projects (title, deadline)
VALUES 
  ('Mastering SQL', '2024-10-01'),
  ('New Hire Onboarding', '2022-02-28'),
  ('New Course Evaluation', '2022-01-01');

INSERT INTO projects_employees (employee_id, project_id)
VALUES 
  (1, 2),
  (2, 2),
  (1, 3),
  (3, 1),
  (3, 3),
  (2, 3);
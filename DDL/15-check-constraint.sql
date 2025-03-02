UPDATE users
SET yearly_salary = NULL
WHERE yearly_salary = 0;

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positivve CHECK (yearly_salary > 0);
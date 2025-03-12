SELECT e.id AS employee_id, e.first_name, e.last_name, p.id AS project_id, p.title FROM employees AS e
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON p.id = pe.project_id
ORDER BY e.id ASC; 
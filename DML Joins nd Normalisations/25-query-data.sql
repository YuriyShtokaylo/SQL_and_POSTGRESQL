SELECT e.id AS employee_id, e.first_name, e.last_name, p.id AS project_id, p.title FROM employees AS e
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON p.id = pe.project_id
ORDER BY e.id ASC; 

SELECT e.id AS employee_id, e.first_name, e.last_name, t.id AS team_id, t.name, p.id AS project_id, p.title FROM employees AS e
LEFT JOIN teams AS t ON e.team_id = t.id
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON p.id = pe.project_id
WHERE t.id = 2
ORDER BY e.id ASC; 

SELECT e.id AS employee_id, e.first_name, e.last_name, t.id AS team_id, t.name, p.id AS project_id, p.title, cb.id AS building_id, cb.name FROM employees AS e
LEFT JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS cb ON t.building_id = cb.id
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON p.id = pe.project_id
WHERE cb.id = 3
ORDER BY e.id ASC; 
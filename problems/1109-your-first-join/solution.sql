-- Employee name + department name
SELECT e.name, d.name AS department
FROM employees e
JOIN departments as d ON e.department_id = d.id
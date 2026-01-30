USE intern_training_db;

-- Drop view if already exists
DROP VIEW IF EXISTS employee_department_view;

-- Create View joining employees and departments
CREATE VIEW employee_department_view AS
SELECT 
    e.emp_id,
    e.full_name,
    e.email,
    e.salary,
    d.department_name
FROM employees_fk e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Fetch data from view
SELECT * FROM employee_department_view;

-- Filter from view
SELECT *
FROM employee_department_view
WHERE department_name = 'CSE';

-- Sort from view
SELECT *
FROM employee_department_view
ORDER BY salary DESC;

-- Attempt insert (expected to fail – join view)
INSERT INTO employee_department_view
(full_name,email,salary,department_name)
VALUES ('Test User','test@gmail.com',45000,'CSE');

-- Drop view safely
DROP VIEW IF EXISTS employee_department_view;

-- Recreate view
CREATE VIEW employee_department_view AS
SELECT 
    e.emp_id,
    e.full_name,
    e.email,
    e.salary,
    d.department_name
FROM employees_fk e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Final validation
SELECT * FROM employee_department_view;

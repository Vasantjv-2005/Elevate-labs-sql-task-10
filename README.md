Task 10 – SQL Views (Intern Training)

Objective:
The goal of this task was to understand SQL Views by creating a virtual table that joins employees and departments data, and then performing operations on it.

Database Used:
intern_training_db

Tables Used:
- employees_fk
- departments

Steps Performed:

1. Created a join query combining employees and departments using INNER JOIN.

2. Converted the join query into a SQL VIEW named employee_department_view.

3. Retrieved data directly from the created view to verify correctness.

4. Applied filtering using WHERE and sorting using ORDER BY on the view.

5. Learned how views simplify complex queries and improve security by exposing only selected columns.

6. Attempted inserting data through the view and observed MySQL limitation when inserting into join views.

7. Dropped the view safely using DROP VIEW IF EXISTS.

8. Recreated the view and validated results again.

Key Learnings:

- Views act as virtual tables.
- Views simplify reporting queries.
- Join views cannot be directly updated or inserted into.
- Views help hide underlying table complexity.
- Views can be filtered and sorted like normal tables.

Real World Mapping:

Company Database
→ Departments Table
→ Employees Table
→ View used for reporting dashboards

Files Included:
- task10_views.sql
- README.md

Status:
Task completed successfully.

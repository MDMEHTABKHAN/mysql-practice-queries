
-- JOINS

-- 1. INNER JOIN: Employees with their Departments
SELECT e.*, d.department_name
FROM Employee e
INNER JOIN Department d ON e.department_id = d.department_id;

-- 2. LEFT JOIN: All Employees and their Projects (if any)
SELECT e.*, ep.project_id
FROM Employee e
LEFT JOIN Employee_Project ep ON e.employee_id = ep.employee_id;

-- 3. RIGHT JOIN: All Projects and assigned Employees (if any)
SELECT ep.*, e.first_name, e.last_name
FROM Employee_Project ep
RIGHT JOIN Employee e ON ep.employee_id = e.employee_id;

-- 4. SELF JOIN: Employees with same department
SELECT e1.first_name AS Employee1, e2.first_name AS Employee2, d.department_name
FROM Employee e1
JOIN Employee e2 ON e1.department_id = e2.department_id AND e1.employee_id <> e2.employee_id
JOIN Department d ON e1.department_id = d.department_id;

-- 5. FULL OUTER JOIN: Departments and Employees (simulate with UNION)
SELECT d.department_id, d.department_name, e.employee_id, e.first_name
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
UNION
SELECT d.department_id, d.department_name, e.employee_id, e.first_name
FROM Employee e
LEFT JOIN Department d ON e.department_id = d.department_id;

-- 6. CROSS JOIN: All combinations of Employees and Projects
SELECT e.first_name, p.project_name
FROM Employee e
CROSS JOIN Project p;

-- 7. INNER JOIN: Projects with their Departments
SELECT p.project_name, d.department_name
FROM Project p
INNER JOIN Department d ON p.department_id = d.department_id;

-- 8. LEFT JOIN: Projects and assigned Employees
SELECT p.project_name, e.first_name
FROM Project p
LEFT JOIN Employee_Project ep ON p.project_id = ep.project_id
LEFT JOIN Employee e ON ep.employee_id = e.employee_id;

-- 9. RIGHT JOIN: Employees and their Projects
SELECT e.first_name, p.project_name
FROM Employee_Project ep
RIGHT JOIN Employee e ON ep.employee_id = e.employee_id
RIGHT JOIN Project p ON ep.project_id = p.project_id;

-- 10. SELF JOIN: Employees with same hire date
SELECT e1.first_name, e2.first_name, e1.hire_date
FROM Employee e1
JOIN Employee e2 ON e1.hire_date = e2.hire_date AND e1.employee_id <> e2.employee_id;

-- 11. INNER JOIN: Employees working on Projects
SELECT e.first_name, p.project_name
FROM Employee_Project ep
INNER JOIN Employee e ON ep.employee_id = e.employee_id
INNER JOIN Project p ON ep.project_id = p.project_id;

-- 12. LEFT JOIN: Departments and their Projects
SELECT d.department_name, p.project_name
FROM Department d
LEFT JOIN Project p ON d.department_id = p.department_id;

-- 13. RIGHT JOIN: Projects and their Departments
SELECT p.project_name, d.department_name
FROM Department d
RIGHT JOIN Project p ON d.department_id = p.department_id;

-- 14. CROSS JOIN: Departments and Roles
SELECT d.department_name, ep.role
FROM Department d
CROSS JOIN Employee_Project ep;

-- 15. INNER JOIN: Employees with their Roles in Projects
SELECT e.first_name, ep.role, p.project_name
FROM Employee e
INNER JOIN Employee_Project ep ON e.employee_id = ep.employee_id
INNER JOIN Project p ON ep.project_id = p.project_id;

-- 16. LEFT JOIN: Employees and their Departments
SELECT e.first_name, d.department_name
FROM Employee e
LEFT JOIN Department d ON e.department_id = d.department_id;

-- 17. RIGHT JOIN: Departments and Employees
SELECT d.department_name, e.first_name
FROM Employee e
RIGHT JOIN Department d ON e.department_id = d.department_id;

-- 18. SELF JOIN: Employees with same salary
SELECT e1.first_name, e2.first_name, e1.salary
FROM Employee e1
JOIN Employee e2 ON e1.salary = e2.salary AND e1.employee_id <> e2.employee_id;

-- 19. FULL OUTER JOIN: Employees and Projects (simulate with UNION)
SELECT e.employee_id, e.first_name, p.project_id, p.project_name
FROM Employee e
LEFT JOIN Employee_Project ep ON e.employee_id = ep.employee_id
LEFT JOIN Project p ON ep.project_id = p.project_id
UNION
SELECT e.employee_id, e.first_name, p.project_id, p.project_name
FROM Project p
LEFT JOIN Employee_Project ep ON p.project_id = ep.project_id
LEFT JOIN Employee e ON ep.employee_id = e.employee_id;

-- 20. CROSS JOIN: Employees and Departments
SELECT e.first_name, d.department_name
FROM Employee e
CROSS JOIN Department d;

-- 21. INNER JOIN: Employees with Projects in their Department
SELECT e.first_name, p.project_name
FROM Employee e
INNER JOIN Project p ON e.department_id = p.department_id;

-- 22. LEFT JOIN: Projects and Employees assigned
SELECT p.project_name, e.first_name
FROM Project p
LEFT JOIN Employee_Project ep ON p.project_id = ep.project_id
LEFT JOIN Employee e ON ep.employee_id = e.employee_id;

-- 23. RIGHT JOIN: Employees and Projects assigned
SELECT e.first_name, p.project_name
FROM Employee_Project ep
RIGHT JOIN Employee e ON ep.employee_id = e.employee_id
RIGHT JOIN Project p ON ep.project_id = p.project_id;

-- 24. SELF JOIN: Employees with same last name
SELECT e1.first_name, e2.first_name, e1.last_name
FROM Employee e1
JOIN Employee e2 ON e1.last_name = e2.last_name AND e1.employee_id <> e2.employee_id;

-- 25. CROSS JOIN: Projects and Roles
SELECT p.project_name, ep.role
FROM Project p
CROSS JOIN Employee_Project ep;



-- view

CREATE VIEW employee_details AS
SELECT first_name, last_name
FROM employee;


SELECT * FROM employee_details;


CREATE view highest_salary AS
SELECT employee_id first_name, last_name, salary
FROM employee
WHERE salary >= 60000;


SELECT * FROM highest_salary;

SELECT * FROM highest_salary WHERE salary >= 65000;


SELECT * FROM highest_salary WHERE last_name = 'Sharma';



CREATE VIEW employee_department_details AS
SELECT e.first_name, p.project_name
FROM Employee_Project ep
RIGHT JOIN Employee e ON ep.employee_id = e.employee_id
RIGHT JOIN Project p ON ep.project_id = p.project_id;


SELECT * FROM employee_department_details;

SELECT * FROM employee_department_details WHERE first_name ='Komal';


DROP VIEW highest_salary;
DROP VIEW employee_department_details;

--  CASE EXPRESSION

SELECT first_name, last_name, salary,
    CASE
    WHEN salary > 70000 THEN 'High'
    WHEN salary BETWEEN 70000 AND 50000 THEN'medium'
    ELSE 'Low'
    END AS empl_salary
FROM employee;    



SELECT 
    CASE 
        WHEN Salary >= 80000 THEN 'High Salary'
        WHEN Salary BETWEEN 50000 AND 79999 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryGroup,
    COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY 
    CASE 
        WHEN Salary >= 80000 THEN 'High Salary'
        WHEN Salary BETWEEN 50000 AND 79999 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END;


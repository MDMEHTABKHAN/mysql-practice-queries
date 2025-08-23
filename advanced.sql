DELIMITER //

CREATE PROCEDURE getAllEmployees()
BEGIN
   SELECT * FROM employees;
END //

DELIMITER ;


CALL `getAllemployees`();




DELIMITER //

CREATE PROCEDURE getEmployeesByDept(IN deptName VARCHAR(100))
BEGIN
    SELECT firstname, lastname, jobtitle, salary
    FROM employees
    WHERE department = deptName;
END //

DELIMITER ;


CALL `getEmployeesByDept`('IT');





CREATE VIEW employee_basic AS
SELECT employeeID, firstname, lastname, department, jobtitle
FROM employees;

SELECT * FROM employee_basic;

DROP VIEW employee_basic;


CREATE VIEW high_salary_emps AS
SELECT firstname, lastname, salary
FROM employees
WHERE salary > 70000;




CREATE VIEW dept_salary_summary AS
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


SELECT * FROM  dept_salary_summary;
SELECT * FROM dept_salary_summary WHERE department = 'IT';




SHOW INDEXES FROM employees;

CREATE INDEX idx_department ON employees(department);


CREATE INDEX idx_name ON employees(lastname, firstname);

CREATE UNIQUE INDEX idx_phone ON employees(phonenumber);


DROP INDEX idx_department ON employees;
DROP INDEX idx_name ON employees;







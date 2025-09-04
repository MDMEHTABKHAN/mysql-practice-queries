

CREATE DATABASE DB;
CREATE DATABASE db1;

CREATE DATABASE IF NOT EXISTS school_db;

CREATE DATABASE if NOT EXISTS school_1;

DROP DATABASE DB;
CREATE DATABASE IF EXISTS db1, school_db, school_1;


CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(50),
    course VARCHAR(150)
);


INSERT INTO student(first_name, last_name, course)
VALUES
('arbaj', 'khan', 'CSE'),
('abdul', 'alam', 'B.PHARMA');


TRUNCATE TABLE student;
DELETE FROM student;

DELETE FROM student
WHERE id > 10;

DROP TABLE student;
DROP TABLE IF EXISTS student;


UPDATE student
SET first_name = 'SHYAM', last_name = 'Khan'
WHERE id = 1;


SELECT first_name, last_name FROM student WHERE course = 'CSE';

SELECT first_name, course FROM student WHERE course = 'CSE';

SELECT first_name, last_name, course FROM student WHERE id = 10;

SELECT * FROM student WHERE course IN ('CSE', 'B.PHARMA');

SELECT * FROM student WHERE id IS NULL;

SELECT * FROM student WHERE id IS NOT NULL;


SELECT * FROM student WHERE id BETWEEN 1 AND 10;


SELECT * FROM student
LIMIT 10;

SELECT * FROM student
WHERE course IS NOT NULL;


SELECT * FROM student
ORDER BY course DESC
LIMIT 10;



-- STRING Functions

SELECT UPPER(first_name), UPPER(last_name), UPPER(course) FROM student;

SELECT LENGTH(first_name), LENGTH(last_name), LENGTH(course) FROM student;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, course FROM student;

SELECT SUBSTRING(first_name, 1, 1) AS first_initial, SUBSTRING(last_name, 1, 1) AS last_initial, course FROM student;


SELECT TRIM(first_name), TRIM(last_name), TRIM(course) FROM student;

SELECT TRIM(' SQL ');


SELECT LTRIM(' SQL ');
SELECT RTRIM(' SQL ');


-- Numeric Functions

SELECT ROUND(123.4567, 2);

SELECT CEIL(123.4567);
SELECT FLOOR(123.4567);


SELECT ABS(-123.4567);


-- DATE Functions

SELECT NOW() AS CurrentDateTime;

SELECT CURRENT_DATE() AS CurrentDate;


SELECT DATEDIFF('2025-09-30', '2025-09-01') AS DaysDiff;

SELECT CURDATE() AS Today;


-- AGGREGATE Functions

SELECT COUNT(*) AS TotalStudents FROM student;

SELECT AVG(id) AS AverageID FROM student;

SELECT MIN(id) AS MinID FROM student;

SELECT MAX(id) AS MaxID FROM student;

SELECT SUM(id) AS TotalID FROM student;


-- GROUP BY

SELECT course, COUNT(*) AS TotalStudents
FROM student
GROUP BY course;

SELECT course, AVG(id) AS AverageID FROM student GROUP BY course;

SELECT course, MIN(id) AS MinID FROM student GROUP BY course;

SELECT course, MAX(id) AS MaxID FROM student GROUP BY course;


-- ORDER BY

SELECT * FROM student
ORDER BY first_name ASC;

SELECT * FROM student
ORDER BY last_name DESC;

SELECT * FROM student
ORDER BY course ASC, last_name DESC;


-- LIMIT

SELECT * FROM student
LIMIT 10;

SELECT * FROM student
LIMIT 5 OFFSET 5;   


--  COMBINATION OF ALL


SELECT * FROM student
WHERE course = 'CSE'
ORDER BY last_name ASC
LIMIT 5 OFFSET 5;

SELECT course, COUNT(*) AS TotalStudents
FROM student
WHERE course = 'CSE'
GROUP BY course
ORDER BY TotalStudents DESC
LIMIT 5 OFFSET 5;


SELECT * FROM student
WHERE course = 'CSE'
ORDER BY last_name ASC
LIMIT 5 OFFSET 5;

SELECT course, COUNT(*) AS TotalStudents
FROM student
WHERE course = 'CSE'
GROUP BY course
ORDER BY TotalStudents DESC
LIMIT 5 OFFSET 5;


-- HAVING

SELECT course, COUNT(*) AS TotalStudents
FROM student
GROUP BY course
HAVING TotalStudents > 5;


SELECT * FROM student
WHERE course = 'CSE'
ORDER BY last_name ASC
LIMIT 5 OFFSET 5;

SELECT course, COUNT(*) AS TotalStudents
FROM student
WHERE course = 'CSE'
GROUP BY course
ORDER BY TotalStudents DESC
LIMIT 5 OFFSET 5;




-- SET OPERATOR

SELECT * FROM course
UNION

SELECT * FROM student;

SELECT * FROM course
UNION ALL
SELECT * FROM student;



CREATE TABLE employee(
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    department_name  VARCHAR(100),
    department_id INT NOT NULL,
    salary DECIMAL(10,2) NOT NUL

);



-- CREATE VIEW

CREATE VIEW max_salary AS
SELECT first_name, last_name, salary FROM employee
WHERE salary >= 700000;
DROP VIEW IF EXISTS max_salary;

SELECT * FROM max_salary;


CREATE VIEW department_info AS
SELECT department_name, COUNT(*) AS TotalEmployees, AVG(salary) AS AverageSalary
FROM employee
WHERE salary IS NOT NULL
GROUP BY department_name
ORDER BY TotalEmployees DESC;

SELECT * FROM department_info;


CREATE VIEW highest_paid_employees AS
SELECT first_name, last_name, salary
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);


-- CREATE VIEW WHO EARN MORE THEN 70000

CREATE VIEW high_earners AS
SELECT first_name, last_name, salary
FROM employee
WHERE salary > 70000;


UPDATE high_earners
SET salary = salary * 1.1;

UPDATE high_earners
SET salary = salary * 1.1
WHERE employee_id = 1




CREATE VIEW employee_view AS
SELECT first_name. last_name, employee_id, department_name
FROM employee
WHERE department_name = 'HR';


CREATE OR REPLACE VIEW employee_view AS
SELECT first_name, last_name, department_name, salary
WHERE department_name = 'HR';






-- index


CREATE INDEX idx_last_name ON employee(last_name);

CREATE INDEX idx_department_name ON employee(department_name);


-- SHOW INDEX
SHOW INDEX FROM employee;

-- DROP INDEX
DROP INDEX idx_last_name ON employee;
DROP INDEX idx_department_name ON employee;


-- CREATE UNIQUE INDEX

CREATE UNIQUE INDEX idx_employee_name ON employee(first_name, last_name);

DROP INDEX idx_employee_name ON employee;

SHOW INDEX FROM employee;



-- CLUSTERED INDex

CREATE CLUSTERED INDEX indx_employee_id ON employee(employee_id);

DROP INDEX indx_employee_id ON employee;




-- store procedure

DELIMITER //

CREATE PROCEDURE GetItDepartmentname()
BEGIN
    SELECT * FROM employee
    WHERE department_name = 'IT';
END //

DELIMITER ;


CALL GetItDepartmentname();




DELIMITER //
CREATE PROCEDURE GetEmployeeDepartment(IN dept VARCHAR(50))
BEGIN
        SELECT * FROM employee
        WHERE department_name = dept
END //

DELIMITER;

CALL GetEmployeeDepartment('IT');
CALL GetEmployeeDepartment('HR');




-- CASE STATEMENT

SELECT first_name, last_name, salary,
    CASE
    WHEN salary >= 80000 THEN 'Highe_salary'
    WHEN salary BETWEEN 50000 and 75000 THEN 'medium_salary'
    ELSE 'good_salary'
END AS salary_info
FROM employee;




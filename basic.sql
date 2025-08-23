


-- 1. Select all customers
SELECT * FROM customer;

-- 2. Select only first names
SELECT firstname FROM customer;

-- 3. Select distinct last names
SELECT DISTINCT lastname FROM customer;

-- 4. Select first 5 customers
SELECT * FROM customer LIMIT 5;

-- 5. Select next 5 customers after skipping 5
SELECT * FROM customer LIMIT 5 OFFSET 5;

-- 6. Select customers ordered by firstname ascending
SELECT * FROM customer ORDER BY firstname ASC;

-- 7. Select customers ordered by lastname descending
SELECT * FROM customer ORDER BY lastname DESC;

-- 8. Select distinct email addresses
SELECT DISTINCT email FROM customer;

-- 9. Select customerid and email
SELECT customerid, email FROM customer;

-- 10. Select customers with unique first names
SELECT DISTINCT firstname FROM customer;

-- 11. Select all customers ordered by customerid
SELECT * FROM customer ORDER BY customerid;

-- 12. Select last 3 customers by customerid
SELECT * FROM customer ORDER BY customerid DESC LIMIT 3;

-- 13. Select customers with email ending in '.com'
SELECT * FROM customer WHERE email LIKE '%.com';

-- 14. Select customers with firstname starting with 'A'
SELECT * FROM customer WHERE firstname LIKE 'A%';

-- 15. Select customers ordered by email
SELECT * FROM customer ORDER BY email;

-- 16. Select first 10 customers with unique last names
SELECT DISTINCT lastname FROM customer LIMIT 10;

-- 17. Select customers skipping first 2 records
SELECT * FROM customer OFFSET 2;

-- 18. Select customers with firstname and lastname
SELECT firstname, lastname FROM customer;

-- 19. Select customers ordered by lastname, then firstname
SELECT * FROM customer ORDER BY lastname, firstname;

-- 20. Select customers with unique combinations of firstname and lastname
SELECT DISTINCT firstname, lastname FROM customer; 


-- 21. Select customers with firstname = 'John'
SELECT * FROM customer WHERE firstname = 'John';

-- 22. Select customers with lastname = 'Smith' AND email ending in '.com'
SELECT * FROM customer WHERE lastname = 'Smith' AND email LIKE '%.com';

-- 23. Select customers with firstname = 'Alice' OR firstname = 'Bob'
SELECT * FROM customer WHERE firstname = 'Alice' OR firstname = 'Bob';

-- 24. Select customers with customerid BETWEEN 10 AND 20
SELECT * FROM customer WHERE customerid BETWEEN 10 AND 20;

-- 25. Select customers with customerid NOT BETWEEN 5 AND 15
SELECT * FROM customer WHERE customerid NOT BETWEEN 5 AND 15;

-- 26. Select customers with firstname IN ('John', 'Alice', 'Bob')
SELECT * FROM customer WHERE firstname IN ('John', 'Alice', 'Bob');

-- 27. Select customers with lastname NOT IN ('Smith', 'Johnson')
SELECT * FROM customer WHERE lastname NOT IN ('Smith', 'Johnson');

-- 28. Select customers with email LIKE '%gmail.com'
SELECT * FROM customer WHERE email LIKE '%gmail.com';

-- 29. Select customers with firstname LIKE 'A%'
SELECT * FROM customer WHERE firstname LIKE 'A%';

-- 30. Select customers with email IS NULL
SELECT * FROM customer WHERE email IS NULL;

-- 31. Select customers with email IS NOT NULL
SELECT * FROM customer WHERE email IS NOT NULL;

-- 32. Select customers with NOT firstname = 'John'
SELECT * FROM customer WHERE NOT firstname = 'John';

-- 33. Select customers with NOT email LIKE '%.com'
SELECT * FROM customer WHERE NOT email LIKE '%.com';

-- 34. Select customers with firstname = 'John' AND lastname = 'Smith'
SELECT * FROM customer WHERE firstname = 'John' AND lastname = 'Smith';

-- 35. Select customers with firstname = 'John' OR lastname = 'Smith'
SELECT * FROM customer WHERE firstname = 'John' OR lastname = 'Smith';

-- 36. Select customers with customerid BETWEEN 1 AND 5 AND email LIKE '%.com'
SELECT * FROM customer WHERE customerid BETWEEN 1 AND 5 AND email LIKE '%.com';

-- 37. Select customers with firstname IN ('John', 'Alice') AND lastname = 'Smith'
SELECT * FROM customer WHERE firstname IN ('John', 'Alice') AND lastname = 'Smith';

-- 38. Select customers with email IS NULL OR firstname = 'Bob'
SELECT * FROM customer WHERE email IS NULL OR firstname = 'Bob';

-- 39. Select customers with NOT (firstname = 'John' OR lastname = 'Smith')
SELECT * FROM customer WHERE NOT (firstname = 'John' OR lastname = 'Smith');

-- 40. Select customers with customerid NOT IN (1,2,3,4,5)
SELECT * FROM customer WHERE customerid NOT IN (1,2,3,4,5);

-- 41. Select customers with email LIKE '%@yahoo.com'
SELECT * FROM customer WHERE email LIKE '%@yahoo.com';

-- 42. Select customers with firstname LIKE '_a%'
SELECT * FROM customer WHERE firstname LIKE '_a%';

-- 43. Select customers with email IS NULL AND lastname = 'Smith'
SELECT * FROM customer WHERE email IS NULL AND lastname = 'Smith';

-- 44. Select customers with customerid BETWEEN 100 AND 200 OR firstname = 'Alice'
SELECT * FROM customer WHERE customerid BETWEEN 100 AND 200 OR firstname = 'Alice';

-- 45. Select customers with NOT email IS NULL
SELECT * FROM customer WHERE NOT email IS NULL;

-- 46. Select customers with firstname LIKE '%son'
SELECT * FROM customer WHERE firstname LIKE '%son';

-- 47. Select customers with lastname IN ('Smith', 'Johnson', 'Williams')
SELECT * FROM customer WHERE lastname IN ('Smith', 'Johnson', 'Williams');

-- 48. Select customers with customerid BETWEEN 50 AND 60 AND email IS NOT NULL
SELECT * FROM customer WHERE customerid BETWEEN 50 AND 60 AND email IS NOT NULL;

-- 49. Select customers with firstname = 'John' AND email LIKE '%@gmail.com'
SELECT * FROM customer WHERE firstname = 'John' AND email LIKE '%@gmail.com';

-- 50. Select customers with NOT (customerid BETWEEN 10 AND 20)
SELECT * FROM customer WHERE NOT (customerid BETWEEN 10 AND 20);






SELECT MAX(salary) FROM employees;

SELECT MIN(salary) FROM employees;
SELECT SUM(salary) FROM employees;


SELECT COUNT(firstname) FROM employees;

SELECT AVG(salary) FROM employees;



SELECT jobtitle, MAX(salary) AS max_salary_per_dept
FROM employees
GROUP BY jobtitle
ORDER BY max_salary_per_dept DESC;


SELECT department, MIN(salary) AS min_salary_per_department
    FROM employees
GROUP BY department
ORDER BY min_salary_per_department;


DROP TABLE employees;

TRUNCATE TABLE employees;



DELETE FROM employees;

DELETE FROM employees
WHERE `employeeID` = 1;

UPDATE employees
SET firstname = 'Mehtab', lastname = 'khan', salary = 100000
WHERE `employeeID` = 10;



BEGIN;

DELETE FROM employees WHERE `employeeID` = 1;

ROLLBACK;

SELECT * FROM employees;

SELECT * FROM employees WHERE `employeeID` = 10;





UPDATE employees
SET firstname = 'Mehtab', lastname = 'khan', salary = 100000
WHERE `employeeID` = 10;

COMMIT;


--  TRANSACTION BEGIN

START TRANSACTION;


--  OR
BEGIN;




-- CHANGES UNDO

ROLLBACK;

SAVEPOINT step1;

-- CHANGES SAVE
COMMIT;




START TRANSACTION;

-- Step 1: Delete orders of customer 103
DELETE FROM employees WHERE `employeeID` = 10;

-- Step 2: Delete the customer
DELETE FROM employees WHERE `employeeID` = 103;

-- If everything is correct:
COMMIT;

-- If something went wrong:
ROLLBACK;



SELECT * FROM employees WHERE `employeeID` IN (10, 103);


SELECT UPPER(first_name) AS first_name_upper_case,
    LOWER(last_name) AS last_name_lower_case,
    SUBSTRING(first_name, 1,3) AS extract_part_of_first_name,
    LENGTH(first_name) AS number_chart,
    LENGTH(UPPER(CONCAT(first_name, ' ', last_name))) AS function_combination,
    TRIM(first_name)
FROM employee;



-- 1. Full name of employee
SELECT CONCAT(first_name, ' ', last_name) AS FullName FROM Employee;

-- 2. Convert email to lowercase
SELECT LOWER(email) AS LowerEmail FROM Employee;

-- 3. Extract first 5 letters of first name
SELECT SUBSTRING(first_name, 1, 5) AS ShortName FROM Employee;

-- 4. Length of employee email
SELECT email, LENGTH(email) AS EmailLength FROM Employee;

-- 5. Remove spaces around name
SELECT TRIM(first_name) AS CleanName FROM Employee;


SELECT ABS(-25) AS AbsoluteValue;  


SELECT ROUND(123.4567, 2) AS RoundedValue;  
SELECT ROUND(123.456) AS RoundedValue;  

SELECT CEIL(12.3) AS CeilValue, CEIL(-12.3) AS CeilNegative;  


SELECT FLOOR(12.7) AS FloorValue, FLOOR(-12.7) AS FloorNegative;  

-- 1. Round salary to nearest thousand
SELECT first_name, ROUND(salary, -3) AS RoundedSalary FROM Employee;

-- 2. Always round salary up
SELECT first_name, CEIL(salary) AS CeilSalary FROM Employee;

-- 3. Remainder of salary when divided by 1000
SELECT first_name, MOD(salary, 1000) AS SalaryRemainder FROM Employee;

-- 4. Square of employee_id
SELECT employee_id, POWER(employee_id, 2) AS ID_Squared FROM Employee;

-- 5. Absolute difference between salary and 50000
SELECT first_name, ABS(salary - 50000) AS SalaryGap FROM Employee;



SELECT department_id,
        MAX(salary) AS max_salary,
        MIN(salary) AS min_salary,
        AVG(salary) AS avg_salary,
        SUM(salary) AS total_salary,
        COUNT(*) AS count_emp
    FROM employee
    GROUP BY department_id;    


SELECT CURRENT_DATE AS Today,
    EXTRACT(YEAR FROM CURRENT_DATE) AS Year,
    EXTRACT(MONTH FROM CURRENT_DATE) AS Month;


SELECT NOW();



-- 1. Current date
SELECT CURDATE() AS Today;

-- 2. Extract year and month of hire
SELECT first_name, YEAR(hire_date) AS HireYear, MONTH(hire_date) AS HireMonth
FROM Employee;

-- 3. Employees hired in last 30 days
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- 4. How many days employee has worked
SELECT first_name, DATEDIFF(CURDATE(), hire_date) AS DaysWorked
FROM Employee;





-- 1. Count total employees
SELECT COUNT(*) AS TotalEmployees FROM Employee;

-- 2. Find average salary
SELECT AVG(salary) AS AvgSalary FROM Employee;

-- 3. Highest and lowest salary
SELECT MAX(salary) AS HighestSalary, MIN(salary) AS LowestSalary FROM Employee;

-- 4. Total salary department-wise
SELECT department_id, SUM(salary) AS DeptTotalSalary
FROM Employee
GROUP BY department_id;











--  window function


-- ROW_NUMBER() – unique sequence per partition
SELECT employee_id, first_name, department_id, salary,
    ROW_NUMBER() OVER(PARTITION BY department_id ORDER BY salary) AS dept_rank
FROM employee;        

SELECT first_name, last_name, salary,
    ROW_NUMBER() OVER(ORDER BY salary) AS rn
FROM employee;



-- RANK() leaves gaps after ties (1,1,3)
-- DENSE_RANK() doesn’t (1,1,2)


SELECT  department_id, salary,
    RANK()  OVER (ORDER BY salary DESC) AS rnk,
    DENSE_RANK()  OVER (ORDER BY salary DESC) AS drnk
FROM Employee;



CREATE TABLE empl(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(1000) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    hire_date DATE NOT NULL
);



INSERT INTO empl(employee_id, employee_name, department, salary, hire_date)
VALUES
(1, 'Amit Sharma', 'HR', 55000, '2020-03-15'),
(2, 'Neha Gupta', 'IT', 72000, '2019-06-01'),
(3, 'Rohit Singh', 'Finance', 60000, '2021-01-12'),
(4, 'Pooja Verma', 'IT', 80000, '2018-11-23'),
(5, 'Sandeep Kumar', 'HR', 58000, '2022-05-19'),
(6, 'Anjali Mehta', 'Finance', 62000, '2020-07-08'),
(7, 'Vikram Joshi', 'IT', 75000, '2019-12-15'),
(8, 'Sneha Reddy', 'HR', 57000, '2021-09-02'),
(9, 'Rakesh Nair', 'Finance', 61000, '2022-02-14'),
(10, 'Deepika Chawla', 'IT', 77000, '2017-10-30'),
(11, 'Manish Kapoor', 'HR', 56000, '2020-08-20'),
(12, 'Priya Bhatia', 'Finance', 63000, '2018-04-10'),
(13, 'Rahul Tiwari', 'IT', 79000, '2021-11-05'),
(14, 'Kiran Ramesh', 'HR', 59000, '2019-03-22'),
(15, 'Arjun Patel', 'Finance', 60500, '2020-12-18'),
(16, 'Divya Sinha', 'IT', 74000, '2021-06-25'),
(17, 'Ajay Desai', 'HR', 55500, '2019-09-14'),
(18, 'Neelam Yadav', 'Finance', 61500, '2020-02-28'),
(19, 'Saurabh Jain', 'IT', 76500, '2018-07-19'),
(20, 'Ritu Sharma', 'HR', 58500, '2021-04-11'),
(21, 'Harshad Malhotra', 'Finance', 62500, '2019-05-23'),
(22, 'Tanvi Agarwal', 'IT', 78000, '2020-09-16'),
(23, 'Vikas Choudhary', 'HR', 56500, '2021-01-30'),
(24, 'Ayesha Khan', 'Finance', 63500, '2018-12-05'),
(25, 'Karthik Rao', 'IT', 77000, '2022-03-12'),
(26, 'Meena Iyer', 'HR', 59000, '2019-11-21'),
(27, 'Raghav Bansal', 'Finance', 61000, '2020-08-14'),
(28, 'Shreya Mukherjee', 'IT', 79500, '2017-06-03'),
(29, 'Vijay Singh', 'HR', 55000, '2021-02-09'),
(30, 'Ananya Sharma', 'Finance', 62000, '2019-10-27'),
(31, 'Pradeep Nair', 'IT', 76000, '2020-01-15'),
(32, 'Sonali Rathi', 'HR', 58000, '2021-05-06'),
(33, 'Rahul Kapoor', 'Finance', 60500, '2018-09-18'),
(34, 'Priyanka Verma', 'IT', 79000, '2019-12-30'),
(35, 'Ankit Mehta', 'HR', 56500, '2020-04-22'),
(36, 'Isha Jain', 'Finance', 63500, '2021-08-09'),
(37, 'Rohan Desai', 'IT', 78000, '2018-11-11'),
(38, 'Nikita Gupta', 'HR', 59000, '2019-03-05'),
(39, 'Abhinav Tiwari', 'Finance', 61500, '2020-07-19'),
(40, 'Tanya Ramesh', 'IT', 75000, '2021-02-28'),
(41, 'Kunal Patel', 'HR', 55500, '2019-06-12'),
(42, 'Divya Chawla', 'Finance', 62500, '2020-09-23'),
(43, 'Aditya Rao', 'IT', 77000, '2018-05-17'),
(44, 'Radhika Yadav', 'HR', 56500, '2021-01-08'),
(45, 'Vivek Malhotra', 'Finance', 63500, '2019-04-29'),
(46, 'Anushka Agarwal', 'IT', 78000, '2020-12-07'),
(47, 'Siddharth Choudhary', 'HR', 59000, '2021-07-15'),
(48, 'Shivani Khan', 'Finance', 61000, '2018-10-20'),
(49, 'Naveen Sharma', 'IT', 79500, '2019-01-26'),
(50, 'Richa Bhatia', 'HR', 55500, '2020-03-09');



-- Aggregate function


SELECT department, MAX(salary) as mx_salary
FROM empl
GROUP BY department;



SELECT department, MIN(salary) as mx_salary
FROM empl
GROUP BY department;


SELECT department, SUM(salary) as mx_salary
FROM empl
GROUP BY department;

SELECT department, AVG(salary) as mx_salary
FROM empl
GROUP BY department;



-- Even if two employees have the same salary, ROW_NUMBER gives different numbers
SELECT employee_name, department, salary, hire_date,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM empl;



SELECT * FROM(
    SELECT employee_name, department, salary, hire_date,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM empl) e WHERE row_num <= 6;

WITH emp_cte AS (
    SELECT employee_name, department, salary, hire_date,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM empl)
SELECT * FROM emp_cte;

SELECT employee_name, department, salary, hire_date,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary ASC) AS row_num
FROM empl;


SELECT employee_name, department, salary, hire_date,
ROW_NUMBER() OVER(ORDER BY salary ASC) AS row_num
FROM empl;


-- If two employees have the highest salary, both get rank = 1. The next employee will get rank = 3 (gap for tie).
SELECT employee_name, department, salary, hire_date,
RANK() OVER(PARTITION BY department ORDER BY salary) AS rn
FROM empl;



SELECT employee_name, department, salary, hire_date,
RANK() OVER(ORDER BY salary) AS rn
FROM empl;


-- Two employees with highest salary → dense_rank = 1. Next employee → dense_rank = 2 (no gap).
SELECT employee_name, department, salary, hire_date,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary) AS dense_rank
FROM empl;


-- this will not work because where clause execute first then select statement:
SELECT employee_name, department, salary, hire_date,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary) AS dense_rank
FROM empl WHERE dense_rank <= 2;



SELECT employee_name, department, salary, hire_date,
DENSE_RANK() OVER(ORDER BY salary) AS dense_rank
FROM empl;







SELECT *,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary) AS row_num,
RANK() OVER(PARTITION BY department ORDER BY salary) AS rn,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary) den_rank
FROM empl;



SELECT *,
ROW_NUMBER() OVER( ORDER BY salary) AS row_num,
RANK() OVER( ORDER BY salary) AS rnk,
DENSE_RANK() OVER( ORDER BY salary) den_rank
FROM empl;








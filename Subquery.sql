


CREATE TABLE com1(
    employeeID INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(40) NOT NULL, 
    lastname VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    phonenumber VARCHAR(15) UNIQUE,
    hiredate DATE NOT NULL,
    gender ENUM('M','F', 'O'),
    jobtitle VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2)  CHECK(salary > 0),
    department VARCHAR(100) NOT NULL,
    createdat TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

SELECT * FROM com1;

INSERT INTO com1 (firstname, lastname, email, phonenumber, hiredate, gender, jobtitle, salary, department) VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', '2022-01-15', 'M', 'Software Engineer', 75000.00, 'IT'),
('Priya', 'Verma', 'priya.verma@example.com', '9876543211', '2023-02-10', 'F', 'HR Executive', 65000.00, 'HR'),
('Rohan', 'Yadav', 'rohan.yadav@example.com', '9876543212', '2021-05-20', 'M', 'Data Analyst', 70000.00, 'Analytics'),
('Sneha', 'Patel', 'sneha.patel@example.com', '9876543213', '2020-12-01', 'F', 'Sales Executive', 62000.00, 'Sales'),
('Vikram', 'Reddy', 'vikram.reddy@example.com', '9876543214', '2023-03-15', 'M', 'Marketing Manager', 80000.00, 'Marketing'),
('Divya', 'Naidu', 'divya.naidu@example.com', '9876543215', '2022-06-18', 'F', 'DevOps Engineer', 78000.00, 'IT'),
('Karan', 'Iyer', 'karan.iyer@example.com', '9876543216', '2019-08-25', 'M', 'Project Manager', 90000.00, 'Operations'),
('Neha', 'Nair', 'neha.nair@example.com', '9876543217', '2021-04-30', 'F', 'Network Admin', 71000.00, 'IT'),
('Aditya', 'Chatterjee', 'aditya.chatterjee@example.com', '9876543218', '2020-09-12', 'M', 'Customer Support', 50000.00, 'Support'),
('Ankita', 'Mukherjee', 'ankita.mukherjee@example.com', '9876543219', '2022-11-20', 'F', 'Business Analyst', 73000.00, 'Business'),
('Raj', 'Das', 'raj.das@example.com', '9876543220', '2023-07-01', 'M', 'Software Engineer', 76000.00, 'IT'),
('Meera', 'Singh', 'meera.singh@example.com', '9876543221', '2022-03-15', 'F', 'HR Executive', 66000.00, 'HR'),
('Nikhil', 'Thakur', 'nikhil.thakur@example.com', '9876543222', '2020-05-22', 'M', 'Data Analyst', 71000.00, 'Analytics'),
('Ishita', 'Jadhav', 'ishita.jadhav@example.com', '9876543223', '2019-10-18', 'F', 'Sales Executive', 63000.00, 'Sales'),
('Manoj', 'Deshmukh', 'manoj.deshmukh@example.com', '9876543224', '2021-01-30', 'M', 'Marketing Manager', 81000.00, 'Marketing'),
('Pooja', 'Gowda', 'pooja.gowda@example.com', '9876543225', '2022-07-17', 'F', 'DevOps Engineer', 79000.00, 'IT'),
('Siddharth', 'Meena', 'siddharth.meena@example.com', '9876543226', '2020-08-10', 'M', 'Project Coordinator', 68000.00, 'Operations'),
('Ritika', 'Kumar', 'ritika.kumar@example.com', '9876543227', '2021-06-25', 'F', 'Network Admin', 72000.00, 'IT'),
('Harsh', 'Gupta', 'harsh.gupta@example.com', '9876543228', '2023-04-04', 'M', 'Customer Support', 51000.00, 'Support'),
('Shreya', 'Agarwal', 'shreya.agarwal@example.com', '9876543229', '2019-12-14', 'F', 'Business Analyst', 74000.00, 'Business'),
('Arjun', 'Sharma', 'arjun.sharma@example.com', '9876543230', '2022-09-11', 'M', 'Software Engineer', 77000.00, 'IT'),
('Kavya', 'Verma', 'kavya.verma@example.com', '9876543231', '2023-01-19', 'F', 'HR Executive', 67000.00, 'HR'),
('Yash', 'Yadav', 'yash.yadav@example.com', '9876543232', '2021-11-27', 'M', 'Data Analyst', 72000.00, 'Analytics'),
('Simran', 'Patel', 'simran.patel@example.com', '9876543233', '2020-06-05', 'F', 'Sales Executive', 64000.00, 'Sales'),
('Rahul', 'Reddy', 'rahul.reddy@example.com', '9876543234', '2022-02-28', 'M', 'Marketing Manager', 82000.00, 'Marketing'),
('Tanya', 'Naidu', 'tanya.naidu@example.com', '9876543235', '2023-05-21', 'F', 'DevOps Engineer', 80000.00, 'IT'),
('Amit', 'Iyer', 'amit.iyer@example.com', '9876543236', '2021-09-15', 'M', 'Project Manager', 91000.00, 'Operations'),
('Rhea', 'Nair', 'rhea.nair@example.com', '9876543237', '2020-03-03', 'F', 'Network Admin', 73000.00, 'IT'),
('Kunal', 'Chatterjee', 'kunal.chatterjee@example.com', '9876543238', '2022-10-10', 'M', 'Customer Support', 52000.00, 'Support'),
('Naina', 'Mukherjee', 'naina.mukherjee@example.com', '9876543239', '2019-11-29', 'F', 'Business Analyst', 75000.00, 'Business'),
('Rajat', 'Das', 'rajat.das@example.com', '9876543240', '2023-06-16', 'M', 'Software Engineer', 78000.00, 'IT'),
('Anjali', 'Singh', 'anjali.singh@example.com', '9876543241', '2022-01-09', 'F', 'HR Executive', 68000.00, 'HR'),
('Tarun', 'Thakur', 'tarun.thakur@example.com', '9876543242', '2020-07-20', 'M', 'Data Analyst', 73000.00, 'Analytics'),
('Neelam', 'Jadhav', 'neelam.jadhav@example.com', '9876543243', '2019-08-03', 'F', 'Sales Executive', 65000.00, 'Sales'),
('Saurav', 'Deshmukh', 'saurav.deshmukh@example.com', '9876543244', '2021-02-13', 'M', 'Marketing Manager', 83000.00, 'Marketing'),
('Bhavna', 'Gowda', 'bhavna.gowda@example.com', '9876543245', '2022-08-26', 'F', 'DevOps Engineer', 81000.00, 'IT'),
('Rakesh', 'Meena', 'rakesh.meena@example.com', '9876543246', '2020-04-11', 'M', 'Project Coordinator', 69000.00, 'Operations'),
('Sana', 'Kumar', 'sana.kumar@example.com', '9876543247', '2021-07-05', 'F', 'Network Admin', 74000.00, 'IT'),
('Jay', 'Gupta', 'jay.gupta@example.com', '9876543248', '2023-02-22', 'M', 'Customer Support', 53000.00, 'Support'),
('Tina', 'Agarwal', 'tina.agarwal@example.com', '9876543249', '2019-10-16', 'F', 'Business Analyst', 76000.00, 'Business');






SELECT * FROM com1;



SELECT department, MAX(salary)
FROM com1
GROUP BY department;



SELECT jobtitle, MIN(salary)
FROM com1
GROUP BY jobtitle;


SELECT jobtitle, AVG(salary)
FROM com1
GROUP BY jobtitle
HAVING AVG(salary) >= 50000;


SELECT department, COUNT(*)
FROM com1
GROUP BY department
HAVING COUNT(*) > 5;



SELECT firstname, lastname, salary, department
FROM com1
WHERE salary > (
    SELECT AVG(salary)
    FROM com1
);




SELECT firstname, salary, department, jobtitle
FROM com1
WHERE salary = (
    SELECT MAX(salary)
    FROM com1
);


SELECT firstname, lastname, department
FROM com1
WHERE department = (
    SELECT department
    FROM com1
    WHERE firstname = 'John'
    LIMIT 1
);



SELECT firstname, lastname, hiredate
FROM com1
WHERE hiredate > (
    SELECT MIN(hiredate)
    FROM com1
);






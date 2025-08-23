

CREATE Table customer(
    customerid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(30),
    email VARCHAR(100)
);


INSERT INTO customer(customerid, firstname, lastname, email)
VALUES
    (1, 'mehtab', 'khan', 'mehtabkhan@gmail.com');

    INSERT INTO customer(customerid, firstname, lastname, email) VALUES
    (2, 'John', 'Doe', 'john.doe@example.com'),
    (3, 'Jane', 'Smith', 'jane.smith@example.com'),
    (4, 'Alice', 'Johnson', 'alice.johnson@example.com'),
    (5, 'Bob', 'Williams', 'bob.williams@example.com'),
    (6, 'Charlie', 'Brown', 'charlie.brown@example.com'),
    (7, 'David', 'Jones', 'david.jones@example.com'),
    (8, 'Emily', 'Davis', 'emily.davis@example.com'),
    (9, 'Frank', 'Miller', 'frank.miller@example.com'),
    (10, 'Grace', 'Wilson', 'grace.wilson@example.com'),
    (11, 'Hannah', 'Moore', 'hannah.moore@example.com'),
    (12, 'Ian', 'Taylor', 'ian.taylor@example.com'),
    (13, 'Julia', 'Anderson', 'julia.anderson@example.com'),
    (14, 'Kevin', 'Thomas', 'kevin.thomas@example.com'),
    (15, 'Laura', 'Jackson', 'laura.jackson@example.com'),
    (16, 'Mike', 'White', 'mike.white@example.com'),
    (17, 'Nina', 'Harris', 'nina.harris@example.com'),
    (18, 'Oscar', 'Martin', 'oscar.martin@example.com'),
    (19, 'Paula', 'Thompson', 'paula.thompson@example.com'),
    (20, 'Quinn', 'Garcia', 'quinn.garcia@example.com'),
    (21, 'Rachel', 'Martinez', 'rachel.martinez@example.com'),
    (22, 'Sam', 'Robinson', 'sam.robinson@example.com'),
    (23, 'Tina', 'Clark', 'tina.clark@example.com'),
    (24, 'Uma', 'Rodriguez', 'uma.rodriguez@example.com'),
    (25, 'Victor', 'Lewis', 'victor.lewis@example.com'),
    (26, 'Wendy', 'Lee', 'wendy.lee@example.com'),
    (27, 'Xander', 'Walker', 'xander.walker@example.com'),
    (28, 'Yara', 'Hall', 'yara.hall@example.com'),
    (29, 'Zane', 'Allen', 'zane.allen@example.com'),
    (30, 'Abby', 'Young', 'abby.young@example.com'),
    (31, 'Ben', 'King', 'ben.king@example.com'),
    (32, 'Cathy', 'Wright', 'cathy.wright@example.com'),
    (33, 'Derek', 'Scott', 'derek.scott@example.com'),
    (34, 'Ella', 'Green', 'ella.green@example.com'),
    (35, 'Fred', 'Adams', 'fred.adams@example.com'),
    (36, 'Gina', 'Baker', 'gina.baker@example.com'),
    (37, 'Harry', 'Nelson', 'harry.nelson@example.com'),
    (38, 'Ivy', 'Carter', 'ivy.carter@example.com'),
    (39, 'Jack', 'Mitchell', 'jack.mitchell@example.com'),
    (40, 'Kara', 'Perez', 'kara.perez@example.com'),
    (41, 'Leo', 'Roberts', 'leo.roberts@example.com'),
    (42, 'Mona', 'Turner', 'mona.turner@example.com'),
    (43, 'Nick', 'Phillips', 'nick.phillips@example.com'),
    (44, 'Olga', 'Campbell', 'olga.campbell@example.com'),
    (45, 'Pete', 'Parker', 'pete.parker@example.com'),
    (46, 'Rita', 'Evans', 'rita.evans@example.com'),
    (47, 'Steve', 'Edwards', 'steve.edwards@example.com'),
    (48, 'Tara', 'Collins', 'tara.collins@example.com'),
    (49, 'Umar', 'Stewart', 'umar.stewart@example.com'),
    (50, 'Vera', 'Sanchez', 'vera.sanchez@example.com'),
    (51, 'Will', 'Morris', 'will.morris@example.com');
SELECT * FROM customer;






CREATE TABLE employees(
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

SELECT * FROM employees;

INSERT INTO employees (firstname, lastname, email, phonenumber, hiredate, gender, jobtitle, salary, department) VALUES
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



SELECT * FROM employees;



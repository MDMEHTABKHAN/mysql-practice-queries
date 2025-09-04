-- 1. Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DateOfBirth DATE
);

-- 2. Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT,
    Instructor VARCHAR(100)
);

-- 3. Enrollments Table (Many-to-Many relationship)
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),
    CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT fk_course FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


-- Sample data for the Students table (20 rows)
INSERT INTO Students (StudentID, FirstName, LastName, Email, DateOfBirth) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@email.com', '2005-03-15'),
(2, 'Bob', 'Smith', 'bob.smith@email.com', '2004-11-22'),
(3, 'Charlie', 'Brown', 'charlie.b@email.com', '2006-07-01'),
(4, 'Diana', 'Prince', 'diana.p@email.com', '2005-09-10'),
(5, 'Edward', 'Davis', 'edward.d@email.com', '2004-05-18'),
(6, 'Fiona', 'Miller', 'fiona.m@email.com', '2006-02-28'),
(7, 'George', 'Wilson', 'george.w@email.com', '2005-12-05'),
(8, 'Hannah', 'Moore', 'hannah.m@email.com', '2004-08-30'),
(9, 'Isaac', 'Taylor', 'isaac.t@email.com', '2006-04-12'),
(10, 'Jasmine', 'Hall', 'jasmine.h@email.com', '2005-10-25'),
(11, 'Kevin', 'Adams', 'kevin.a@email.com', '2004-06-03'),
(12, 'Laura', 'Baker', 'laura.b@email.com', '2006-01-09'),
(13, 'Mark', 'Wright', 'mark.w@email.com', '2005-07-19'),
(14, 'Nancy', 'Clark', 'nancy.c@email.com', '2004-09-14'),
(15, 'Oliver', 'Lewis', 'oliver.l@email.com', '2006-03-21'),
(16, 'Pamela', 'King', 'pamela.k@email.com', '2005-08-08'),
(17, 'Quincy', 'Scott', 'quincy.s@email.com', '2004-12-16'),
(18, 'Rachel', 'Green', 'rachel.g@email.com', '2006-05-23'),
(19, 'Sam', 'Carter', 'sam.c@email.com', '2005-11-04'),
(20, 'Tina', 'Evans', 'tina.e@email.com', '2004-07-27');

-- Sample data for the Courses table (20 rows)
INSERT INTO Courses (CourseID, CourseName, Credits, Instructor) VALUES
(101, 'Introduction to Computer Science', 3, 'Dr. Alan Turing'),
(102, 'Data Structures and Algorithms', 4, 'Dr. Grace Hopper'),
(103, 'Database Management Systems', 4, 'Dr. Edgar Codd'),
(104, 'Web Development Fundamentals', 3, 'Dr. Tim Berners-Lee'),
(105, 'Artificial Intelligence', 4, 'Dr. Geoffrey Hinton'),
(106, 'Operating Systems', 4, 'Dr. Linus Torvalds'),
(107, 'Computer Networks', 3, 'Dr. Vint Cerf'),
(108, 'Software Engineering', 3, 'Dr. Barbara Liskov'),
(109, 'Machine Learning', 4, 'Dr. Andrew Ng'),
(110, 'Cybersecurity Essentials', 3, 'Dr. Whitfield Diffie'),
(111, 'Discrete Mathematics', 3, 'Dr. Paul Erdős'),
(112, 'Calculus I', 4, 'Dr. Leonhard Euler'),
(113, 'Physics for Engineers', 4, 'Dr. Isaac Newton'),
(114, 'Chemistry I', 4, 'Dr. Marie Curie'),
(115, 'Introduction to Psychology', 3, 'Dr. Sigmund Freud'),
(116, 'World History II', 3, 'Dr. Yuval Noah Harari'),
(117, 'Principles of Economics', 3, 'Dr. Adam Smith'),
(118, 'Creative Writing', 3, 'Dr. Virginia Woolf'),
(119, 'Public Speaking', 2, 'Dr. Dale Carnegie'),
(120, 'Digital Art and Design', 3, 'Dr. Leonardo da Vinci');

-- Sample data for the Enrollments table (20 rows)
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES
(1, 1, 101, 'A'),
(2, 2, 102, 'B'),
(3, 3, 103, 'C'),
(4, 4, 104, 'A'),
(5, 5, 105, 'B'),
(6, 6, 106, 'A'),
(7, 7, 107, 'C'),
(8, 8, 108, 'B'),
(9, 9, 109, 'A'),
(10, 10, 110, 'B'),
(11, 11, 111, 'C'),
(12, 12, 112, 'A'),
(13, 13, 113, 'B'),
(14, 14, 114, 'C'),
(15, 15, 115, 'A'),
(16, 16, 116, 'B'),
(17, 17, 117, 'C'),
(18, 18, 118, 'A'),
(19, 19, 119, 'B'),
(20, 20, 120, 'C');





SELECT FirstName, LastName FROM students;

SELECT * FROM Students WHERE DateOfBirth > '2005-01-01';



SELECT * FROM students WHERE FirstName LIKE 'A%';


SELECT COUNT(*) FROM students;



SELECT DISTINCT YEAR(DateOfBirth) AS BirthYear FROM Students;


SELECT * FROM students
ORDER BY FirstName;


SELECT * FROM students WHERE Email LIKE '%mail%';


SELECT * FROM student 
WHERE StudentID BETWEEN 5 AND 10;


SELECT COUNT(*)
FROM Students
WHERE YEAR(DateOfBirth) = 2004;



SELECT * FROM employee;


-- Find the second highest salary from the Employee table.

SELECT MAX(salary) AS SecondHighestSalary
FROM employee
WHERE salary < (
    SELECT MAX(salary) FROM employee
);


SELECT * FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;




-- Retrieve duplicate rows from a table.


SELECT first_name, COUNT(*)
FROM employee
GROUP BY  first_name
HAVING COUNT(*) > 1;

-- Show top 5 highest salaries.

SELECT * FROM employee
ORDER BY salary DESC
LIMIT 5;



-- Count total employees per department_id.

SELECT department_id, COUNT(*) AS total_number_of_department
FROM employee
GROUP BY department_id;



SELECT *
FROM employee
WHERE department_id IS NULL;

SELECT * FROM employee
WHERE  department_id IS NOT NULL;



SELECT EXTRACT(YEAR FROM hire_date) AS year, SUM(salary) AS total_salary
FROM employee
GROUP BY EXTRACT(YEAR FROM hire_date);



SELECT
        EXTRACT(YEAR FROM hire_date) AS year,
        EXTRACT(MONTH FROM hire_date) AS month,
        EXTRACT(WEEK FROM hire_date) AS week,
        EXTRACT(DAY FROM hire_date) AS day
    FROM employee;



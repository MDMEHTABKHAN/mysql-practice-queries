

CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(50)
);

CREATE TABLE Enrolls (
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);



-- Insert 50 rows into the Student table
INSERT INTO Student (Name, Age) VALUES
('Liam Smith', 22),
('Olivia Johnson', 21),
('Noah Williams', 23),
('Emma Brown', 20),
('Ava Jones', 22),
('Oliver Garcia', 24),
('Sophia Miller', 21),
('Elijah Davis', 25),
('Charlotte Rodriguez', 20),
('James Martinez', 23),
('Amelia Hernandez', 21),
('Benjamin Lopez', 24),
('Mia Gonzalez', 20),
('Lucas Wilson', 25),
('Isabella Anderson', 22),
('Henry Thomas', 23),
('Evelyn Taylor', 21),
('Alexander Moore', 24),
('Harper Jackson', 20),
('Sebastian White', 23),
('Camila Harris', 21),
('Jackson Clark', 25),
('Luna Lewis', 22),
('Mason Hall', 23),
('Ella Scott', 20),
('Ethan King', 24),
('Aria Green', 21),
('Daniel Adams', 25),
('Scarlett Baker', 20),
('Carter Wright', 23),
('Penelope Hill', 21),
('Grayson Ramirez', 24),
('Chloe Campbell', 20),
('Wyatt Mitchell', 25),
('Zoey Roberts', 22),
('Michael Carter', 23),
('Layla Phillips', 21),
('Gabriel Evans', 24),
('Victoria Turner', 20),
('Jack Collins', 23),
('Aubrey Parker', 21),
('Leo Morris', 25),
('Grace Rivera', 22),
('Julian Hughes', 23),
('Aurora Foster', 20),
('Samuel Bell', 24),
('Nora Ross', 21),
('Nathan Young', 25),
('Leah Ward', 22),
('Joseph Cox', 23);

-- Insert 50 rows into the Course table
INSERT INTO Course (Title) VALUES
('Introduction to Computer Science'),
('Calculus I'),
('World History'),
('General Psychology'),
('Introduction to Biology'),
('Organic Chemistry'),
('Principles of Economics'),
('English Composition'),
('Art History'),
('Sociology 101'),
('Linear Algebra'),
('Physics for Engineers'),
('American Literature'),
('Data Structures'),
('Microeconomics'),
('Macroeconomics'),
('Introduction to Philosophy'),
('Criminal Justice'),
('Principles of Marketing'),
('Human Anatomy'),
('Introduction to C++'),
('Digital Photography'),
('Public Speaking'),
('Spanish I'),
('French I'),
('Creative Writing'),
('Political Science'),
('Environmental Science'),
('Modern Algebra'),
('Thermodynamics'),
('Circuit Analysis'),
('Database Management'),
('Web Development Fundamentals'),
('Graphic Design'),
('Physical Geography'),
('Astronomy'),
('Geology'),
('Music Theory'),
('Introduction to Acting'),
('Statistics'),
('Differential Equations'),
('Artificial Intelligence'),
('Machine Learning'),
('Cybersecurity'),
('Network Administration'),
('Robotics'),
('Quantum Mechanics'),
('Cognitive Science'),
('Biochemistry'),
('Developmental Psychology');

-- Insert 50 rows into the Enrolls table with varied pairings
INSERT INTO Enrolls (StudentID, CourseID) VALUES
(1, 1), (1, 3), (2, 5), (3, 2), (4, 4), (5, 6), (6, 8), (7, 7), (8, 9), (9, 10),
(10, 12), (11, 11), (12, 14), (13, 13), (14, 16), (15, 15), (16, 18), (17, 17), (18, 20), (19, 19),
(20, 22), (21, 21), (22, 24), (23, 23), (24, 26), (25, 25), (26, 28), (27, 27), (28, 30), (29, 29),
(30, 32), (31, 31), (32, 34), (33, 33), (34, 36), (35, 35), (36, 38), (37, 37), (38, 40), (39, 39),
(40, 42), (41, 41), (42, 44), (43, 43), (44, 46), (45, 45), (46, 48), (47, 47), (48, 50), (49, 49);





SELECT * FROM Student;

SELECT * FROM Course;

SELECT * FROM enrolls;



ALTER TABLE Student ADD Phone VARCHAR(15);


ALTER TABLE Student ALTER COLUMN Name VARCHAR(100);


ALTER TABLE Student DROP COLUMN Phone;

DROP TABLE Student, course, enrolls;


TRUNCATE TABLE student;
TRUNCATE TABLE Course;

TRUNCATE TABLE Enrolls;

DELETE FROM student WHERE  age = 20;

DELETE FROM student;

DELETE FROM student WHERE age = 20 AND `StudentID` = 12;

DELETE FROM student WHERE name  = 'Mehtab' and age = 12;


UPDATE student
SET age = 25
WHERE `StudentID` = 12;


UPDATE student
SET age = 25, name = 'Mehtab'
WHERE `StudentID` = 13;



SELECT * FROM student;

SELECT * FROM student, Course, enrolls;



SELECT name, age FROM student;

SELECT CourseID Title FROM course;


SELECT Name, Age FROM Student
WHERE Age >= 21;


SELECT Name, Age FROM Student
ORDER BY Age ASC;

SELECT Name, Age FROM Student
ORDER BY Age ASC, name DESC;


SELECT DISTINCT CourseID FROM Student;








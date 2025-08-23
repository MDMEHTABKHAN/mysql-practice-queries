

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Email VARCHAR(100) UNIQUE
);


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT DEFAULT 3
);




CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


INSERT INTO Students VALUES (1, 'Rahul', 20, 'rahul@mail.com');
INSERT INTO Students VALUES (2, 'Meena', 22, 'meena@mail.com');
INSERT INTO Students VALUES (3, 'Amit', 19, 'amit@mail.com');



INSERT INTO Courses VALUES (101, 'Database Systems', 4);
INSERT INTO Courses VALUES (102, 'Operating Systems', 3);
INSERT INTO Courses VALUES (103, 'Computer Networks', 3);


INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID)
VALUES (1, 1, 101), (2, 1, 103), (3, 2, 102), (4, 3, 101);


SELECT * FROM Students;



SELECT DISTINCT CourseID FROM Enrollments;


SELECT Name, Age FROM Students ORDER BY Age DESC;


SELECT s.Name, c.CourseName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Database Systems';



UPDATE Courses
SET Credits = 4
WHERE CourseName = 'Operating Systems';



DELETE FROM Enrollments
WHERE StudentID = 3;


DELETE FROM Courses
WHERE CourseID = 103;


SELECT Name, Age
FROM Students
WHERE Age > 20;


SELECT CourseName
FROM Courses
WHERE Credits = 3;


SELECT Name, Age, Email
FROM Students
WHERE Age > 20 AND Email LIKE '%gmail.com';




SELECT s.Name, s.Age
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE s.Age < 20 OR e.CourseID = 101;


SELECT Name, Age
FROM Students
WHERE NOT Age = 22;


SELECT s.Name
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID IN (101, 103);


SELECT CourseName
FROM Courses
WHERE Credits IN (3, 4);



SELECT Name, Age
FROM Students
WHERE Age BETWEEN 19 AND 22;


SELECT CourseName, Credits
FROM Courses
WHERE Credits BETWEEN 2 AND 4;




SELECT Name
FROM Students
WHERE Name LIKE 'A%';


SELECT Name, Email
FROM Students
WHERE Email LIKE '%mail.com';




SELECT Name
FROM Students
WHERE Name LIKE '_____';


SELECT Name
FROM Students s
WHERE EXISTS (
    SELECT 1 
    FROM Enrollments e
    WHERE e.StudentID = s.StudentID
);



SELECT COUNT(*) AS TotalStudents
FROM Students;



SELECT COUNT(*) AS TotalStudents
FROM Students;




SELECT SUM(Credits) AS TotalCredits
FROM Courses;




SELECT AVG(Age) AS AvgAge
FROM Students;




SELECT MIN(Age) AS Youngest, MAX(Age) AS Oldest
FROM Students;



SELECT MIN(Credits), MAX(Credits)
FROM Courses;



SELECT Age, COUNT(*) AS StudentCount
FROM Students
GROUP BY Age;


SELECT CourseID, COUNT(StudentID) AS EnrolledStudents
FROM Enrollments
GROUP BY CourseID;


SELECT e.CourseID, AVG(s.Age) AS AvgAge
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
GROUP BY e.CourseID;


SELECT CourseID, COUNT(StudentID) AS EnrolledStudents
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 2;

SELECT Age, COUNT(*) AS StudentCount
FROM Students
GROUP BY Age
HAVING COUNT(*) > 1;

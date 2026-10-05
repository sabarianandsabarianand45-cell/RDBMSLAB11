CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT,
    StudentName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50)
);

CREATE TABLE Enrollment (
    EnrollmentID INT,
    StudentID INT,
    CourseID INT
);


--Insert all the values

INSERT INTO Department VALUES (101, 'Computer Science');
INSERT INTO Department VALUES (102, 'Mathematics');

INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);

INSERT INTO Course VALUES (201, 'Database Systems');
INSERT INTO Course VALUES (202, 'Data Structures');

INSERT INTO Enrollment VALUES (1, 1001, 201);
INSERT INTO Enrollment VALUES (2, 1002, 202);
INSERT INTO Enrollment VALUES (3, 1003, 201);


--create a student details view

CREATE VIEW studentDetails AS
SELECT s.StudentName, c.CourseName, d.DepartmentName
FROM Student s
JOIN Department d ON s.DepartmentID = d.DepartmentID
JOIN Enrollment e ON s.StudentID = e.StudentID
JOIN Course c ON e.CourseID = c.CourseID;

-- The view must display;

SELECT * FROM studentDetails;

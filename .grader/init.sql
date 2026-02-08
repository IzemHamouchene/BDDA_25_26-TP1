DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Enrollments;

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    major TEXT
);

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT,
    credits INTEGER
);

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade REAL,
    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES
(1,'Alice','Smith',23,'CS'),
(2,'Bob','Brown',21,'Math'),
(3,'Charlie','Davis',24,'CS');

INSERT INTO Courses VALUES
(1,'Database Systems',4),
(2,'Algorithms',3);

INSERT INTO Enrollments VALUES
(1,1,1,16),
(2,1,2,14),
(3,3,1,18);

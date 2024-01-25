CREATE TABLE Students (
    StudentID int PRIMARY KEY,
    Name text
);

CREATE TABLE Grades (
    StudentID int,
    Subject text,
    Grade int,
    FOREIGN key (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Students (StudentID, Name)
VALUES (1, 'Alice Johnson'),
       (2, 'Bob Smith'),
       (3, 'Charlie Brown');

INSERT INTO Grades (StudentID, Subject, Grade)
VALUES (2, 'Science', 90),
       (3, 'Math', 95),
       (1, 'Geography', 85);

SELECT * FROM Students JOIN Grades ON Students.StudentID = Grades.StudentID;
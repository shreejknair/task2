-- With condition: Select all students who scored more than 90 marks
SELECT * 
FROM Student 
WHERE Marks > 90;

-- Without condition: Select all students
SELECT * 
FROM Student;

-- With condition: Select all students who scored more than 90 marks along with their subjects
SELECT s.*, sub.*
FROM Student s
JOIN StudentSubject ss ON s.RollNumber = ss.StudentID
JOIN Subject sub ON ss.SubjectID = sub.SubjectID
WHERE s.Marks > 90;

-- Without condition: Select all students along with their subjects
SELECT s.*, sub.*
FROM Student s
JOIN StudentSubject ss ON s.RollNumber = ss.StudentID
JOIN Subject sub ON ss.SubjectID = sub.SubjectID;

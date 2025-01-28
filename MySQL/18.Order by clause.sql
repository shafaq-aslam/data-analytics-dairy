CREATE DATABASE schooldetail;
USE schooldetail;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade INT,
    marks INT
);

INSERT INTO students (name, age, grade, marks)
VALUES
('Alice', 15, 9, 85),
('Bob', 14, 8, 90),
('Charlie', 15, 9, 88),
('David', 14, 8, 92),
('Eva', 15, 10, 75);

SELECT * FROM students;

-- ORDER BY

SELECT *
FROM students
ORDER BY marks;

SELECT *
FROM students
ORDER BY marks DESC;

SELECT *
FROM students
ORDER BY marks DESC, grade DESC;

SELECT *
FROM students
ORDER BY age ASC, marks DESC;

SELECT name, age, marks AS total_marks
FROM students
ORDER BY age ASC;

SELECT student_id, name, marks, marks*1.5 AS total_weighted
FROM students
ORDER BY student_id ASC
LIMIT 4;










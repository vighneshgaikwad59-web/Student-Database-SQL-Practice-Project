-- ============================================
-- Student Database - SQL Practice Project
-- Author: Vighnesh Anand Gaikwad
-- ============================================

-- 1. Create and select database
CREATE DATABASE clg;
USE clg;

-- 2. Create table
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

-- 3. Insert sample records
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- 4. Basic queries

-- View all records
SELECT * FROM student;

-- Distinct cities
SELECT DISTINCT city FROM student;

-- First 3 records
SELECT * FROM student LIMIT 3;

-- Total number of students
SELECT COUNT(rollno) FROM student;

-- Student count per city
SELECT city, name, COUNT(rollno)
FROM student
GROUP BY city;

-- Max, average, and min marks per city (sorted)
SELECT
    city,
    MAX(marks) AS max_marks,
    AVG(marks) AS avg_marks,
    MIN(marks) AS min_marks
FROM student
GROUP BY city
ORDER BY city;

-- 5. Update a specific record (example: fix a student's name)
UPDATE student
SET name = "anita"
WHERE rollno = 101;

-- Verify the update
SELECT * FROM student WHERE rollno = 101;

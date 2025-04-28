-- University Database System
-- Description: A comprehensive database system for managing university data including students, professors, courses, and enrollments.
-- Author: Deepali Garg
-- Date: March 03, 2025
-- Version: 1.0

-- --------------------------------------
-- Database Schema Creation
-- --------------------------------------

-- Table: Students
-- Stores information about students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    enrollment_date DATE
);

-- Table: Professors
-- Stores information about professors
CREATE TABLE Professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

-- Table: Courses
-- Stores course details with a foreign key to Professors
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    professor_id INT,
    credits INT,
    FOREIGN KEY (professor_id) REFERENCES Professors(professor_id)
);

-- Table: Enrollments
-- Tracks student course enrollments with foreign keys to Students and Courses
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- --------------------------------------
-- Data Insertion
-- --------------------------------------

-- Insert 50 Students
INSERT INTO Students (student_id, first_name, last_name, enrollment_date) VALUES
(1, 'John', 'Smith', '2023-09-01'), (2, 'Emma', 'Johnson', '2023-09-01'), (3, 'Michael', 'Brown', '2023-09-01'),
(4, 'Sarah', 'Davis', '2023-09-01'), (5, 'James', 'Wilson', '2023-09-01'), (6, 'Olivia', 'Taylor', '2023-09-01'),
(7, 'William', 'Anderson', '2023-09-01'), (8, 'Sophia', 'Martinez', '2023-09-01'), (9, 'David', 'Garcia', '2023-09-01'),
(10, 'Isabella', 'Lee', '2023-09-01'), (11, 'Alexander', 'Thompson', '2023-09-01'), (12, 'Mia', 'White', '2023-09-01'),
(13, 'Daniel', 'Clark', '2023-09-01'), (14, 'Charlotte', 'Lewis', '2023-09-01'), (15, 'Ethan', 'Walker', '2023-09-01'),
(16, 'Amelia', 'Hall', '2023-09-01'), (17, 'Matthew', 'Allen', '2023-09-01'), (18, 'Ava', 'Young', '2023-09-01'),
(19, 'Joseph', 'King', '2023-09-01'), (20, 'Emily', 'Wright', '2023-09-01'), (21, 'Benjamin', 'Scott', '2023-09-01'),
(22, 'Harper', 'Green', '2023-09-01'), (23, 'Lucas', 'Baker', '2023-09-01'), (24, 'Evelyn', 'Adams', '2023-09-01'),
(25, 'Henry', 'Nelson', '2023-09-01'), (26, 'Abigail', 'Carter', '2024-01-15'), (27, 'Jackson', 'Mitchell', '2024-01-15'),
(28, 'Ella', 'Perez', '2024-01-15'), (29, 'Logan', 'Roberts', '2024-01-15'), (30, 'Scarlett', 'Turner', '2024-01-15'),
(31, 'Sebastian', 'Phillips', '2024-01-15'), (32, 'Grace', 'Campbell', '2024-01-15'), (33, 'Aiden', 'Parker', '2024-01-15'),
(34, 'Chloe', 'Evans', '2024-01-15'), (35, 'Carter', 'Edwards', '2024-01-15'), (36, 'Lily', 'Collins', '2024-01-15'),
(37, 'Owen', 'Stewart', '2024-01-15'), (38, 'Zoey', 'Sanchez', '2024-01-15'), (39, 'Gabriel', 'Morris', '2024-01-15'),
(40, 'Hannah', 'Rogers', '2024-01-15'), (41, 'Julian', 'Reed', '2024-01-15'), (42, 'Nora', 'Cook', '2024-01-15'),
(43, 'Isaac', 'Morgan', '2024-01-15'), (44, 'Layla', 'Bell', '2024-01-15'), (45, 'Levi', 'Murphy', '2024-01-15'),
(46, 'Addison', 'Bailey', '2024-01-15'), (47, 'Elijah', 'Rivera', '2024-01-15'), (48, 'Avery', 'Cooper', '2024-01-15'),
(49, 'Grayson', 'Richardson', '2024-01-15'), (50, 'Luna', 'Cox', '2024-01-15');

-- Insert 50 Professors
INSERT INTO Professors (professor_id, first_name, last_name, department) VALUES
(1, 'Robert', 'Thompson', 'Computer Science'), (2, 'Sarah', 'Williams', 'Mathematics'), (3, 'David', 'Miller', 'Physics'),
(4, 'Elizabeth', 'Jones', 'Biology'), (5, 'Thomas', 'Davis', 'Chemistry'), (6, 'Jennifer', 'Garcia', 'History'),
(7, 'Michael', 'Martinez', 'English'), (8, 'Patricia', 'Hernandez', 'Psychology'), (9, 'James', 'Lopez', 'Economics'),
(10, 'Linda', 'Gonzalez', 'Sociology'), (11, 'William', 'Wilson', 'Computer Science'), (12, 'Barbara', 'Anderson', 'Mathematics'),
(13, 'Richard', 'Taylor', 'Physics'), (14, 'Susan', 'Moore', 'Biology'), (15, 'Joseph', 'Jackson', 'Chemistry'),
(16, 'Margaret', 'Martin', 'History'), (17, 'Charles', 'Lee', 'English'), (18, 'Lisa', 'Perez', 'Psychology'),
(19, 'Christopher', 'Clark', 'Economics'), (20, 'Nancy', 'Lewis', 'Sociology'), (21, 'Daniel', 'Walker', 'Computer Science'),
(22, 'Karen', 'Hall', 'Mathematics'), (23, 'Paul', 'Allen', 'Physics'), (24, 'Betty', 'Young', 'Biology'),
(25, 'Mark', 'King', 'Chemistry'), (26, 'Helen', 'Wright', 'History'), (27, 'Steven', 'Scott', 'English'),
(28, 'Donna', 'Green', 'Psychology'), (29, 'Edward', 'Baker', 'Economics'), (30, 'Carol', 'Adams', 'Sociology'),
(31, 'Brian', 'Nelson', 'Computer Science'), (32, 'Ruth', 'Carter', 'Mathematics'), (33, 'George', 'Mitchell', 'Physics'),
(34, 'Dorothy', 'Perez', 'Biology'), (35, 'Ronald', 'Roberts', 'Chemistry'), (36, 'Janet', 'Turner', 'History'),
(37, 'Timothy', 'Phillips', 'English'), (38, 'Deborah', 'Campbell', 'Psychology'), (39, 'Kenneth', 'Parker', 'Economics'),
(40, 'Shirley', 'Evans', 'Sociology'), (41, 'Larry', 'Edwards', 'Computer Science'), (42, 'Cynthia', 'Collins', 'Mathematics'),
(43, 'Stephen', 'Stewart', 'Physics'), (44, 'Rebecca', 'Sanchez', 'Biology'), (45, 'Frank', 'Morris', 'Chemistry'),
(46, 'Laura', 'Rogers', 'History'), (47, 'Jeffrey', 'Reed', 'English'), (48, 'Amy', 'Cook', 'Psychology'),
(49, 'Gary', 'Morgan', 'Economics'), (50, 'Michelle', 'Bell', 'Sociology');

-- Insert 50 Courses
INSERT INTO Courses (course_id, course_name, professor_id, credits) VALUES
(1, 'Introduction to Programming', 1, 3), (2, 'Calculus I', 2, 4), (3, 'Physics Fundamentals', 3, 4),
(4, 'Biology 101', 4, 3), (5, 'Organic Chemistry', 5, 4), (6, 'World History', 6, 3),
(7, 'English Literature', 7, 3), (8, 'Psychology Basics', 8, 3), (9, 'Microeconomics', 9, 4),
(10, 'Sociology Intro', 10, 3), (11, 'Data Structures', 11, 4), (12, 'Calculus II', 12, 4),
(13, 'Quantum Physics', 13, 4), (14, 'Cell Biology', 14, 3), (15, 'Inorganic Chemistry', 15, 4),
(16, 'American History', 16, 3), (17, 'Creative Writing', 17, 3), (18, 'Social Psychology', 18, 4),
(19, 'Macroeconomics', 19, 4), (20, 'Social Theory', 20, 3), (21, 'Algorithms', 21, 4),
(22, 'Linear Algebra', 22, 4), (23, 'Thermodynamics', 23, 4), (24, 'Genetics', 24, 3),
(25, 'Physical Chemistry', 25, 4), (26, 'European History', 26, 3), (27, 'Poetry', 27, 3),
(28, 'Cognitive Psychology', 28, 4), (29, 'Economic Policy', 29, 4), (30, 'Cultural Sociology', 30, 3),
(31, 'Operating Systems', 31, 4), (32, 'Differential Equations', 32, 4), (33, 'Electromagnetism', 33, 4),
(34, 'Ecology', 34, 3), (35, 'Analytical Chemistry', 35, 4), (36, 'Ancient History', 36, 3),
(37, 'Fiction Writing', 37, 3), (38, 'Behavioral Psychology', 38, 4), (39, 'International Economics', 39, 4),
(40, 'Urban Sociology', 40, 3), (41, 'Database Systems', 41, 4), (42, 'Statistics', 42, 4),
(43, 'Relativity', 43, 4), (44, 'Microbiology', 44, 3), (45, 'Biochemistry', 45, 4),
(46, 'Modern History', 46, 3), (47, 'Drama', 47, 3), (48, 'Clinical Psychology', 48, 4),
(49, 'Development Economics', 49, 4), (50, 'Social Research', 50, 3);

-- Insert 50 Enrollments
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) VALUES
(1, 1, 1, '2023-09-01', 'A'), (2, 2, 2, '2023-09-01', 'B+'), (3, 3, 3, '2023-09-01', 'A-'),
(4, 4, 4, '2023-09-01', 'B'), (5, 5, 5, '2023-09-01', 'A'), (6, 6, 6, '2023-09-01', 'B+'),
(7, 7, 7, '2023-09-01', 'A-'), (8, 8, 8, '2023-09-01', 'B'), (9, 9, 9, '2023-09-01', 'A'),
(10, 10, 10, '2023-09-01', 'B+'), (11, 11, 11, '2023-09-01', 'A'), (12, 12, 12, '2023-09-01', 'B-'),
(13, 13, 13, '2023-09-01', 'A-'), (14, 14, 14, '2023-09-01', 'B+'), (15, 15, 15, '2023-09-01', 'A'),
(16, 16, 16, '2023-09-01', 'B'), (17, 17, 17, '2023-09-01', 'A-'), (18, 18, 18, '2023-09-01', 'B+'),
(19, 19, 19, '2023-09-01', 'A'), (20, 20, 20, '2023-09-01', 'B'), (21, 21, 21, '2023-09-01', 'A-'),
(22, 22, 22, '2023-09-01', 'B+'), (23, 23, 23, '2023-09-01', 'A'), (24, 24, 24, '2023-09-01', 'B-'),
(25, 25, 25, '2023-09-01', 'A'), (26, 26, 26, '2024-01-15', 'B+'), (27, 27, 27, '2024-01-15', 'A-'),
(28, 28, 28, '2024-01-15', 'B'), (29, 29, 29, '2024-01-15', 'A'), (30, 30, 30, '2024-01-15', 'B+'),
(31, 31, 31, '2024-01-15', 'A-'), (32, 32, 32, '2024-01-15', 'B'), (33, 33, 33, '2024-01-15', 'A'),
(34, 34, 34, '2024-01-15', 'B+'), (35, 35, 35, '2024-01-15', 'A'), (36, 36, 36, '2024-01-15', 'B-'),
(37, 37, 37, '2024-01-15', 'A-'), (38, 38, 38, '2024-01-15', 'B+'), (39, 39, 39, '2024-01-15', 'A'),
(40, 40, 40, '2024-01-15', 'B'), (41, 41, 41, '2024-01-15', 'A-'), (42, 42, 42, '2024-01-15', 'B+'),
(43, 43, 43, '2024-01-15', 'A'), (44, 44, 44, '2024-01-15', 'B'), (45, 45, 45, '2024-01-15', 'A-'),
(46, 46, 46, '2024-01-15', 'B+'), (47, 47, 47, '2024-01-15', 'A'), (48, 48, 48, '2024-01-15', 'B-'),
(49, 49, 49, '2024-01-15', 'A'), (50, 50, 50, '2024-01-15', 'B+');

-- --------------------------------------
-- Query Solutions
-- --------------------------------------

-- Basic Level Operations

-- 1. Get all students
SELECT * FROM Students;

-- 2. Students who enrolled in 2023
SELECT first_name, last_name, enrollment_date
FROM Students
WHERE YEAR(enrollment_date) = 2023;

-- 3. List professors alphabetically by last name
SELECT first_name, last_name, department
FROM Professors
ORDER BY last_name ASC;

-- 4. Total number of courses
SELECT COUNT(*) AS total_courses
FROM Courses;

-- 5. Add a new student
INSERT INTO Students (student_id, first_name, last_name, enrollment_date)
VALUES (51, 'Sophie', 'Bennett', '2024-09-01');

-- 6. Change a professor's department
UPDATE Professors
SET department = 'Data Science'
WHERE professor_id = 1;

-- 7. Remove an enrollment
DELETE FROM Enrollments
WHERE enrollment_id = 50;

-- Intermediate Level Operations

-- 8. List students and their courses
SELECT s.first_name, s.last_name, c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- 9. All professors and their courses (including those without courses)
SELECT p.first_name, p.last_name, c.course_name
FROM Professors p
LEFT JOIN Courses c ON p.professor_id = c.professor_id;

-- 10. Count students per enrollment date
SELECT enrollment_date, COUNT(*) AS student_count
FROM Students
GROUP BY enrollment_date;

-- 11. Show departments with more than 1 professor
SELECT department, COUNT(*) AS professor_count
FROM Professors
GROUP BY department
HAVING COUNT(*) > 1;

-- 12. Students enrolled in courses taught by Computer Science professors
SELECT s.first_name, s.last_name
FROM Students s
WHERE s.student_id IN (
    SELECT e.student_id
    FROM Enrollments e
    JOIN Courses c ON e.course_id = c.course_id
    JOIN Professors p ON c.professor_id = p.professor_id
    WHERE p.department = 'Computer Science'
);

-- 13. Students with A or A- grades in 2024 courses
SELECT s.first_name, s.last_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.grade IN ('A', 'A-')
AND YEAR(e.enrollment_date) = 2024;

-- 14. Categorize course credits
SELECT course_name, credits,
    CASE
        WHEN credits = 3 THEN 'Standard'
        WHEN credits = 4 THEN 'Advanced'
        ELSE 'Other'
    END AS credit_category
FROM Courses;

-- 15. Average grade per professor
SELECT p.first_name, p.last_name, AVG(
    CASE e.grade
        WHEN 'A' THEN 4.0
        WHEN 'A-' THEN 3.7
        WHEN 'B+' THEN 3.3
        WHEN 'B' THEN 3.0
        WHEN 'B-' THEN 2.7
        ELSE 0
    END) AS avg_grade
FROM Professors p
JOIN Courses c ON p.professor_id = c.professor_id
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY p.professor_id, p.first_name, p.last_name;
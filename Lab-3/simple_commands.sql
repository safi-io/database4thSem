CREATE DATABASE lab_3;
use lab_3;

CREATE TABLE teacher(
	id int primary key,
    name varchar(50),
    subject varchar(50),
    salary bigint
);

INSERT INTO teacher(id, name, subject) VALUES (51, 'Safi', 'Computer Science');
INSERT INTO teacher(id, name, subject, salary) VALUES (52, 'Ssadafi', 'Computer Science', 0);

INSERT INTO teacher (id, name, subject, salary) VALUES
(1, 'John Doe', 'Mathematics', 50000),
(2, 'Jane Smith', 'Physics', 60000),
(3, 'Robert Brown', 'Chemistry', 55000),
(4, 'Emily Johnson', 'Biology', 58000),
(5, 'Michael White', 'English', 52000),
(6, 'Sarah Wilson', 'History', 50000),
(7, 'David Miller', 'Geography', 53000),
(8, 'Laura Clark', 'Computer Science', 70000),
(9, 'James Lewis', 'Physics', 60000),
(10, 'Olivia Walker', 'Mathematics', 54000),
(11, 'Daniel Hall', 'English', 50000),
(12, 'Sophia Allen', 'Biology', 58000),
(13, 'Benjamin Young', 'History', 51000),
(14, 'Emma King', 'Chemistry', 55000),
(15, 'William Scott', 'Geography', 52000),
(16, 'Ava Adams', 'Computer Science', 72000),
(17, 'Alexander Baker', 'Mathematics', 50000),
(18, 'Charlotte Wright', 'Physics', 62000),
(19, 'Henry Green', 'Chemistry', 0),
(20, 'Mia Martinez', 'Biology', 0),
(21, 'Ethan Rodriguez', 'English', 0),
(22, 'Isabella Gonzalez', 'History', 0),
(23, 'Mason Nelson', 'Geography', 0),
(24, 'Amelia Carter', 'Computer Science', 0),
(25, 'Lucas Mitchell', 'Mathematics', 0),
(26, 'Harper Perez', 'Physics', 0),
(27, 'Liam Roberts', 'Chemistry', 56000),
(28, 'Evelyn Edwards', 'Biology', 59000),
(29, 'Noah Torres', 'English', 50000),
(30, 'Lily Ramirez', 'History', 51000),
(31, 'Logan Campbell', 'Geography', 52000),
(32, 'Zoe Sanders', 'Computer Science', 75000),
(33, 'Jack Price', 'Mathematics', 50000),
(34, 'Aria Bennett', 'Physics', 61000),
(35, 'Elijah Cooper', 'Chemistry', 0),
(36, 'Abigail Flores', 'Biology', 0),
(37, 'Sebastian Rivera', 'English', 0),
(38, 'Emily Gomez', 'History', 0),
(39, 'Carter Morris', 'Geography', 0),
(40, 'Madison Stewart', 'Computer Science', 0),
(41, 'Owen Hughes', 'Mathematics', 0),
(42, 'Chloe Bailey', 'Physics', 0),
(43, 'Jayden Jenkins', 'Chemistry', 57000),
(44, 'Scarlett Perry', 'Biology', 60000),
(45, 'Gabriel Russell', 'English', 50000),
(46, 'Hannah Bryant', 'History', 51000),
(47, 'Samuel Howard', 'Geography', 52000),
(48, 'Avery Ward', 'Computer Science', 76000),
(49, 'Levi Cox', 'Mathematics', 50000),
(50, 'Sofia Richardson', 'Physics', 62000);

SELECT * FROM teacher;

-- IN
SELECT * FROM teacher WHERE SUBJECT IN ('Computer Science', 'Physics');
-- IS NULL
SELECT * FROM teacher WHERE salary IS NULL;
-- ORDER BY
SELECT * FROM teacher ORDER BY salary DESC;
-- LIKE
SELECT subject FROM teacher WHERE name LIKE '%cox'; -- % at start, means start does not matter, end must match!
SELECT subject FROM teacher WHERE name LIKE 'Sofia%'; -- % at end, means start matters, end does not matter!
SELECT * FROM teacher WHERE name LIKE '%HOW%'; -- we dont know, it's the first or the last, it will fetch only entries whre HOW is available
SELECT * FROM teacher WHERE name LIKE '%o_'; -- fetching the name, where second last character is o
SELECT * FROM teacher WHERE name LIKE 'L_vi_C_%'; --  end doesnot matter, and also using wildCard

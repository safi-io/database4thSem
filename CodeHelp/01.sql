CREATE DATABASE IF NOT EXISTS random_practice;
USE random_practice;

CREATE TABLE course (
	course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50)
);

DELETE FROM course WHERE course_id = 1;
UPDATE course
SET course_id = 20
WHERE course_id = 2;

DROP TABLE course;
SELECT * FROM course;
INSERT INTO course (course_name) VALUES ("Database Systems");
INSERT INTO course (course_name) VALUES ("Data Structures");
INSERT INTO course (course_name) VALUES ("Python Programming");

CREATE TABLE student (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) UNIQUE,
    student_age DECIMAL(2) DEFAULT 20,
    student_department VARCHAR(50),
    student_course INT,
    
    CONSTRAINT CHECK (student_age >= 18),
    
    FOREIGN KEY(student_course)
		REFERENCES course(course_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO student (student_name, student_department, student_course) VALUES
("QWE", "Computer Science", 20),
("UMAIR", 21, "Software Engineering", 2);

DROP TABLE student;
TRUNCATE table student;
SELECT * FROM student;
SELECT student_name FROM student WHERE student_name LIKE "%f%";
DELETE FROM student where student_id = 4;

DROP TABLE student;

SELECT now(); -- Server Time

SELECT student_department, count(*) FROM student GROUP BY student_department;
SELECT student_department, count(*) FROM student GROUP BY student_department HAVING count(*) >=3;
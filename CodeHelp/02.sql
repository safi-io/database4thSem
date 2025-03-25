use random_practice;

select * from course;
select * from student;

describe student_details;
describe course;

UPDATE student
SET isFeePaid = TRUE
WHERE student_id = 3;

-- ADD NEW COLUMN
ALTER TABLE student ADD isFeePaid BOOLEAN DEFAULT FALSE;

-- CHANGE DATA TYPE
ALTER TABLE student MODIFY isFeePaid VARCHAR(5) DEFAULT "FALSE";

-- CHANGE COLUMN NAME
ALTER TABLE student CHANGE COLUMN isFeePaid areDuesClear BOOLEAN DEFAULT FALSE;

-- DROP COLUMN
ALTER TABLE student DROP COLUMN areDuesClear;

-- RENAME TABLE
ALTER TABLE student RENAME TO student_details;
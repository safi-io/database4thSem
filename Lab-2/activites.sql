use lab_2;
select * from teachers;

-- Graded Lab Tasks

-- Lab Task 1
select teacher_id, teacher_name, teacher_department as dept from teachers;

-- Lab Task 2
select concat(teacher_name, ',', teacher_id) as nameIDreleation from teachers; 

-- Lab Task 3
select distinct teacher_department as uni_departments from teachers;

-- Lab Task 4
select concat(teacher_name, ' ', teacher_id) as nameIDreleation from teachers; 

-- Lab Task 5
select teacher_name as name, teacher_salary*12 as salary from teachers;

-- Lab Task 6
describe teachers;
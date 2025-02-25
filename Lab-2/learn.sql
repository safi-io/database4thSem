create database lab_2;
use lab_2;

create table teachers (
	teacher_id int auto_increment primary key,
    teacher_name varchar(50),
    teacher_department varchar(2),
    teacher_salary numeric(3,0)
);
drop table teachers;

insert into teachers values (1,'safi','CS', 999);
insert into teachers(teacher_name, teacher_department, teacher_salary) values ('ali','SE', 899), ('zia','SE', 700);


select teacher_salary as old_salary, teacher_salary+1 as new_salary from teachers;
select concat(teacher_name, "      salary is:      " , teacher_salary) as salary_data from teachers;

select distinct teacher_name ,teacher_department from teachers;
create database lab_1;
drop database lab_1;
use lab_1;

create table students (
	s_id int auto_increment primary key,
	s_name varchar(50),
    s_age int,
    s_cnic varchar(13),
    s_dob DATE, 
    s_matric_marks numeric(4,0),
    s_inter_marks numeric(4,0),
    s_nts_marks numeric(3,0),
    s_merit FLOAT GENERATED ALWAYS AS (
    ((s_nts_marks / 100) * 50) + 
    ((s_inter_marks / 1100) * 40) + 
    ((s_matric_marks / 1100) * 10)) STORED
);

drop table students;

insert into students (s_name, s_age, s_cnic, s_dob, s_matric_marks, s_inter_marks, s_nts_marks) 
value ('Safi Khan',20, 3310547294423, '2005-08-17', 981, 730, 73);

insert into students (s_name, s_age, s_cnic, s_dob, s_matric_marks, s_inter_marks, s_nts_marks) 
value ('Muzammal Saleem',20, 3310270171295, '2005-02-04', 989, 730, 61);

select * from students;

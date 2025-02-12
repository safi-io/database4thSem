create database lab_1;
use lab_1;

create table student (
	s_id int auto_increment primary key,
	s_name varchar(50),
    s_age int,
    s_cnic numeric(13, 0),
    s_dob DATETIME(213),
    
);
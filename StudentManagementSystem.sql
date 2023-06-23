create database spectwo

use spectwo

CREATE TABLE student_data (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	roll_number VARCHAR(255) UNIQUE NOT NULL,
	name VARCHAR(255) NOT NULL
);

insert into student_data
(roll_number,name) values
("A1","sriram"),("A2","vishnu");

select*from student_data;


create table special_needs (
id integer auto_increment,
student_id integer unique not null,
needs_wc boolean default false,
is_vi boolean default false,
primary key(id),
foreign key(student_id) references student_data(id)
);

insert into special_needs
(student_id,needs_wc,is_vi) values
(2,false,true);

select s.roll_number as RollNumber,s.name as StudentName from student_data as s
left join special_needs as sp on sp.student_id = s.id
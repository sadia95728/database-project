create database studentmanagement;
GO
use studentmanagement;
GO

create table department(
department_id int primary key,
d_name varchar (20),
location varchar(100)
);
INSERT INTO department(department_id, d_name,location) VALUES
('1','CS', 'Block A'),
('3','AI','Block F'),
('9','English','Block D');
SELECT * FROM department;

create table teacher(
teacher_id int primary key,
t_name varchar(20),
email varchar(100),
department_id int,
foreign key (department_id) references department(department_id)
on update cascade
on delete cascade
);
on date cascade;
on update cascade;
INSERT INTO teacher(teacher_id, t_name, email, department_id) VALUES
('12', 'Ahmad', 'ahmad98@gmail.com', '3');
INSERT INTO teacher(teacher_id, t_name, email, department_id) VALUES
('16', 'Sara', 'sara77@gmail.com', '1'),
('6', 'Kiran', 'kiran99@gmail.com', '3'),
('4', 'Rimsha', 'rimsha92@gmail.com', '9');

SELECT * FROM teacher;

create table course(
course_id int primary key,
credit int,
department_id int,
teacher_id int,
foreign key (department_id) references department (department_id),
foreign key (teacher_id) references teacher(teacher_id)
on update cascade
on delete cascade
);
insert into course(course_id,credit,department_id, teacher_id) values
('1','2','3','12'),
('4','5','9','16');
SELECT * FROM course;

create table student(
student_id int primary key,
s_name varchar(20),
address varchar(200),
city varchar(20),
);
insert into student(student_id,s_name,address,city) values
('1','natasha',' 9 street,appartment 3 ','layyah'),
('2','anaya','16 street,appartment 8','lahore');
select*from student;

create table enrollement(
Enrollement_id int primary key,
student_id int,
course_id int,
grade varchar(20),
foreign key (student_id) references student(student_id),
foreign key (course_id) references course(course_id)
on update cascade
on delete cascade
);

insert into enrollement(Enrollement_id,student_id,course_id,grade) values
('1','1','4','A'),
('9','2','1','B');
 select*from Enrollement;
 select*from teacher;
 select distinct department_id from teacher;
 select t_name from teacher where teacher_id=12;  
 select*from teacher
 order by t_name;
 select*from teacher
 order by teacher_id desc;

  select*from teacher;
  select count(email)
  from teacher;

  alter table teacher
  ADD age int;

  alter table teacher
  drop  column age;

  update teacher
  set email='usamakhangamil.com'
  where t_name='kiran';

  select *from teacher;
  
  select teacher.teacher_id,
  department.department_id
  from teacher
  join department
  on teacher.teacher_id=
  department.department_id;

  select*from teacher;
  select*from department;
  ////
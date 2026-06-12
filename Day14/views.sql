create database views;
use views;


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration_months INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    fee DECIMAL(10,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
select * from enrollments;
INSERT INTO students VALUES
(101, 'Arun', 'CSE'),
(102, 'Priya', 'ECE'),
(103, 'Ravi', 'MECH'),
(104, 'Sneha', 'CSE'),
(105, 'Kiran', 'EEE');

INSERT INTO courses VALUES
(201, 'Python', 3),
(202, 'Java', 4),
(203, 'SQL', 2),
(204, 'Data Science', 6),
(205, 'Web Development', 5);

INSERT INTO enrollments VALUES
(301, 101, 201, 5000),
(302, 102, 203, 3000),
(303, 103, 202, 4500),
(304, 104, 204, 7000),
(305, 105, 205, 6000);

select *from students;
select *from courses;
select *from enrollments;

create view s as
select *from students;
select *from s;

create view r as
select *from students where student_id in (select student_id from enrollments);
select * from r;

CREATE VIEW student_enrollment_view AS
SELECT s.student_id,
       s.student_name,
       s.department,
       e.enrollment_id,
       e.course_id,
       e.fee
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id;
SELECT * FROM student_enrollment_view;







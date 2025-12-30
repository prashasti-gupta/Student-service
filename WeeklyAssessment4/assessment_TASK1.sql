create schema school_db;

create table STUDENT (student_id INT(2) PRIMARY KEY, student_name VARCHAR(50), email VARCHAR(50), DOB DATE, marks INT(3));

insert into STUDENT values (01, "Alice", "alice@gmail.com", '2002-10-28', 80);
insert into STUDENT values (02, "Benji", "benji123@gmail.com", '2000-02-12', 38);
insert into STUDENT values (03, "Charles", "charlie456@gmail.com", '1999-12-12', 78);
insert into STUDENT values (04, "Daniel", "danny@gmail.com", '2001-11-30', 100);
insert into STUDENT values (05, "Ethan", "eth097@gmail.com", '1997-04-06', 61);

select * from STUDENT where marks>70;

select avg(marks) as average_marks from STUDENT;

select * from STUDENT where marks = (select max(marks) as maximum_marks from STUDENT);

CREATE TABLE COURSE (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id)
);
INSERT INTO COURSE VALUES
(101, 'Math', 01),
(102, 'Science', 01),
(103, 'English', 02),
(104, 'Computer', 04);


SELECT 
    STUDENT.student_id, STUDENT.student_name, COURSE.course_name
FROM STUDENT INNER JOIN COURSE ON STUDENT.student_id = COURSE.student_id;

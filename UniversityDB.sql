create database university;
use university;
Create Table Student(
Student_id int primary key auto_increment,
Student_Fname varchar (255),
Student_Lname varchar(255),
email_id varchar(50),
Gpa decimal (3, 2),
major_subject Varchar(255));


insert into Student(Student_id,Student_Fname,Student_Lname,email_id,Gpa,major_subject) 
Values
		(NULL,"Ali", "Muhammad", "muhammad.ali@example.com", 3.6, "Computer Science"),
        (NULL,"Khan", "Fatima", "fatima.khan@example.com", 3.9, "Mathematics"),
		(NULL,"Hassan", "Ahmed", "ahmed.hassan@example.com", 3.2, "Biology"),
		(NULL,"Ahmed", "Ayesha", "ayesha.ahmed@example.com", 3.8, "Physics"),
		(NULL,"Rehman", "Sana", "sana.rehman@example.com", 3.5, "Chemistry"),
		(NULL,"Khan", "Bilal", "bilal.khan@example.com", 3.1, "Economics"),
        (NULL,"Mahmood", "Zara", "zara.mahmood@example.com", 3.7, "Psychology"),
		(NULL,"Ali", "Hassan", "hassan.ali@example.com", 3.9, "English Literature"),
		(NULL,"Malik", "Aisha", "aisha.malik@example.com", 3.4, "Business Administration"),
		(NULL,"Iqbal", "Usman", "usman.iqbal@example.com", 3.6, "Political Science");
        
SELECT email_id
FROM Student 
Where GPA < 3.0;

SELECT student_Fname, Gpa
FROM Student
WHERE major_subject = 'Computer Science';

SET SQL_SAFE_UPDATES=0;
UPDATE Student 
Set GPA = 3.9
Where student_Fname = 'Muhammad' And student_Lname='Ali';

delete from student where gpa <3.4;

SELECT student_Fname, major_subject
FROM Student
WHERE Gpa >3.5 And Gpa<4.0;

Create table courses(course_id INT Primary Key ,course_name Varchar(60),instructor Varchar(60),credits Decimal(3,2));
insert into courses(course_id,course_name,instructor,credits)
Values
(1,"Introduction to SQL", "Dr. Ahmed", 3),
(2,"Data Structures", "Prof. Fatima", 4),
(3,"Calculus I", "Dr. Ali", 4),
(4,"Introduction to Biology", "Prof. Ayesha", 3),
(5,"Financial Accounting", "Dr. Hassan", 3),
(6,"History of Pakistan", "Prof. Zara", 3),
(7,"Psychology", "Dr. Bilal", 4),
(8,"English Literature", "Prof. Zara", 4),
(9,"Business Management", "Dr. Usman", 3),
(0,"Computer Networks", "Prof. Aisha", 3);

SELECT course_name
FROM courses
WHERE instructor = (
    SELECT instructor
    FROM courses
    GROUP BY instructor
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

UPDATE courses
SET credits = 5
WHERE course_name = 'Data Structures';

DELETE FROM courses
WHERE credits < 3;

SELECT course_name
FROM courses
GROUP BY course_name
HAVING COUNT(DISTINCT instructor) = 1;
SELECT course_name, instructor
FROM courses
WHERE credits = (
    SELECT MAX(credits)
    FROM courses
);

SELECT course_name
FROM Courses
GROUP BY course_name
HAVING COUNT(DISTINCT instructor) = 1;
SELECT course_name, instructor
FROM Courses
WHERE credits = (
    SELECT MAX(credits)
    FROM Courses
);



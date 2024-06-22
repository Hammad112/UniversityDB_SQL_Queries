# UniversityDB_SQL_Queries

Welcome to the UniversityDB_SQL_Queries repository! This project is designed to give you hands-on experience with SQL queries involving Data Definition Language (DDL) and Data Manipulation Language (DML) operations. The tasks include creating databases and tables, inserting data, and performing various SQL queries to manipulate and retrieve data.

## Repository Content

### 1. Database Setup

#### Create a new database named "UniversityDB"
```sql
CREATE DATABASE UniversityDB;
USE UniversityDB;
```

#### Create two tables: "Students" and "Courses"
```sql
-- Creating the Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255),
    email_id VARCHAR(255),
    GPA DECIMAL(3, 2),
    major_subject VARCHAR(255)
);

-- Creating the Courses table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    credits DECIMAL(2, 1)
);
```

### 2. Data Insertion

#### Insert sample data into the "Students" table
```sql
INSERT INTO Students (student_name, email_id, GPA, major_subject) VALUES
('Muhammad Ali', 'muhammad.ali@example.com', 3.6, 'Computer Science'),
('Fatima Khan', 'fatima.khan@example.com', 3.9, 'Mathematics'),
('Ahmed Hassan', 'ahmed.hassan@example.com', 3.2, 'Biology'),
('Ayesha Ahmed', 'ayesha.ahmed@example.com', 3.8, 'Physics'),
('Sana Rehman', 'sana.rehman@example.com', 3.5, 'Chemistry'),
('Bilal Khan', 'bilal.khan@example.com', 3.1, 'Economics'),
('Zara Mahmood', 'zara.mahmood@example.com', 3.7, 'Psychology'),
('Hassan Ali', 'hassan.ali@example.com', 3.9, 'English Literature'),
('Aisha Malik', 'aisha.malik@example.com', 3.4, 'Business Administration'),
('Usman Iqbal', 'usman.iqbal@example.com', 3.6, 'Political Science');
```

#### Insert sample data into the "Courses" table
```sql
INSERT INTO Courses (course_name, instructor, credits) VALUES
('Introduction to SQL', 'Dr. Ahmed', 3),
('Data Structures', 'Prof. Fatima', 4),
('Calculus I', 'Dr. Ali', 4),
('Introduction to Biology', 'Prof. Ayesha', 3),
('Financial Accounting', 'Dr. Hassan', 3),
('History of Pakistan', 'Prof. Zara', 3),
('Psychology', 'Dr. Bilal', 4),
('English Literature', 'Prof. Zara', 4),
('Business Management', 'Dr. Usman', 3),
('Computer Networks', 'Prof. Aisha', 3);
```

### 3. Query Tasks (for "Students" Table)

#### a. Retrieve the email IDs of students who have a GPA below 3.0
```sql
SELECT email_id
FROM Students
WHERE GPA < 3.0;
```

#### b. Retrieve the names and GPAs of students majoring in Computer Science
```sql
SELECT student_name, GPA
FROM Students
WHERE major_subject = 'Computer Science';
```

#### c. Update the GPA of a student named "Muhammad Ali" to 3.9
```sql
UPDATE Students
SET GPA = 3.9
WHERE student_name = 'Muhammad Ali';
```

#### d. Delete the record of the student with the lowest GPA
```sql
DELETE FROM Students
WHERE GPA = (SELECT MIN(GPA) FROM Students);
```

#### e. Retrieve the names and major subjects of students with GPAs between 3.5 and 4.0
```sql
SELECT student_name, major_subject
FROM Students
WHERE GPA BETWEEN 3.5 AND 4.0;
```

### 4. Query Tasks (for "Courses" Table)

#### f. Retrieve the names of all courses taught by an instructor with the highest number of courses
```sql
SELECT course_name
FROM Courses
WHERE instructor = (SELECT instructor FROM Courses GROUP BY instructor ORDER BY COUNT(*) DESC LIMIT 1);
```

#### g. Update the credits of a course named "Data Structures" to 5
```sql
UPDATE Courses
SET credits = 5
WHERE course_name = 'Data Structures';
```

#### h. Delete all records of courses with fewer than 3 credits
```sql
DELETE FROM Courses
WHERE credits < 3;
```

#### i. Retrieve the names of courses with unique instructors (no repeated instructors)
```sql
SELECT course_name
FROM Courses
WHERE instructor IN (SELECT instructor FROM Courses GROUP BY instructor HAVING COUNT(*) = 1);
```

#### j. Retrieve the names and instructors of courses with the highest number of credits
```sql
SELECT course_name, instructor
FROM Courses
WHERE credits = (SELECT MAX(credits) FROM Courses);
```


## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Hammad112/UniversityDB_SQL_Queries.git
   cd UniversityDB_SQL_Queries
   ```

2. **Set up the database:**
   Execute the provided SQL scripts to create the database, tables, and insert sample data.

3. **Run the queries:**
   Use your preferred SQL client or tool to run the provided SQL queries and verify the results.


By engaging with the UniversityDB_SQL_Queries repository, you'll gain valuable hands-on experience in SQL querying, data manipulation, and database management, preparing you for a wide range of data-related tasks in your academic, professional, or personal projects. Happy querying!


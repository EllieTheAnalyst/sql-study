SELECT * FROM students;

SELECT *
FROM students
WHERE age IS NULL;

SELECT 
    COUNT(*) AS total_students,
    COUNT(age) AS students_with_age
FROM students;

SELECT 
    COUNT(*) AS total,
    COUNT(age) AS non_null_ages,
    COUNT(*) - COUNT(age) AS null_ages
FROM students;

SELECT 
    grade,
    COUNT(*) AS students_per_grade
FROM students
GROUP BY grade;

SELECT 
    COUNT(*) AS total,
    COUNT(age) AS non_null_ages,
    COUNT(grade) AS non_null_grades
FROM students;


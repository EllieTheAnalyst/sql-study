-- INNER JOIN: only students with matching courses
SELECT 
    s.name,
    c.course_name
FROM students s
JOIN courses c
ON s.id = c.student_id;

-- LEFT JOIN: keep all students, even without courses
SELECT 
    s.name,
    c.course_name
FROM students s
LEFT JOIN courses c
ON s.id = c.student_id;

-- Course counts per student (includes 0 due to LEFT JOIN)
SELECT 
    s.name,
    COUNT(c.course_name) AS number_of_courses
FROM students s
LEFT JOIN courses c
ON s.id = c.student_id
GROUP BY s.name
ORDER BY number_of_courses DESC;

-- CASE WHEN: add a status label based on NULL logic
SELECT 
    s.name,
    CASE 
        WHEN s.age IS NULL THEN 'Missing age'
        ELSE 'Age provided'
    END AS age_status
FROM students s;


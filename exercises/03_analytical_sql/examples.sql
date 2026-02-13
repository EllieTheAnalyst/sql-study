-- =========================================
-- Analytical SQL Patterns
-- =========================================


-- 1️⃣ Subquery with IN
-- Students who have at least one course

SELECT *
FROM students
WHERE id IN (
    SELECT student_id
    FROM courses
);



-- 2️⃣ Subquery with NOT IN
-- Students without courses

SELECT *
FROM students
WHERE id NOT IN (
    SELECT student_id
    FROM courses
);



-- 3️⃣ HAVING (filter after aggregation)

SELECT 
    s.name,
    COUNT(c.course_name) AS number_of_courses
FROM students s
LEFT JOIN courses c
ON s.id = c.student_id
GROUP BY s.name
HAVING COUNT(c.course_name) > 1;



-- 4️⃣ Window Function: RANK()

SELECT *,
       RANK() OVER (ORDER BY number_of_courses DESC) AS course_rank
FROM (
    SELECT 
        s.name,
        COUNT(c.course_name) AS number_of_courses
    FROM students s
    LEFT JOIN courses c
    ON s.id = c.student_id
    GROUP BY s.name
) sub;



-- 5️⃣ Window Function: DENSE_RANK()

SELECT *,
       DENSE_RANK() OVER (ORDER BY number_of_courses DESC) AS dense_rank
FROM (
    SELECT 
        s.name,
        COUNT(c.course_name) AS number_of_courses
    FROM students s
    LEFT JOIN courses c
    ON s.id = c.student_id
    GROUP BY s.name
) sub;


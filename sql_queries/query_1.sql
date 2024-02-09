-- query_1.sql

SELECT 
    s.name AS student_name,
    AVG(g.grade) AS average_grade
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
GROUP BY 
    s.name
ORDER BY 
    average_grade DESC
LIMIT 5;

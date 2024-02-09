-- query_2.sql

SELECT 
    s.name AS student_name,
    AVG(g.grade) AS average_grade
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
WHERE 
    g.subject_id = 1  -- ID предмета, який вас цікавить
GROUP BY 
    s.name
ORDER BY 
    average_grade DESC
LIMIT 1;

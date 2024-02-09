-- query_3.sql

SELECT 
    g.group_id,
    AVG(grade) AS average_grade
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
WHERE 
    g.subject_id = 1  -- ID предмета, який вас цікавить
GROUP BY 
    g.group_id;

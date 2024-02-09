-- query_7.sql

SELECT 
    s.name AS student_name,
    g.grade
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
WHERE 
    s.group_id = 1  -- ID групи, яка вас цікавить
    AND g.subject_id = 1;  -- ID предмета, який вас цікавить


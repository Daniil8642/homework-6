-- query_6.sql

SELECT 
    s.name AS student_name,
    g.name AS group_name
FROM 
    students s
JOIN 
    groups g ON s.group_id = g.group_id
WHERE 
    g.group_id = 1;  -- ID групи, яка вас цікавить

-- query_5.sql

SELECT 
    t.name AS teacher_name,
    s.name AS subject_name
FROM 
    teachers t
JOIN 
    subjects s ON t.teacher_id = s.teacher_id
WHERE 
    t.teacher_id = 1;  -- ID викладача, який вас цікавить

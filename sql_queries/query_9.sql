-- query_9.sql

SELECT 
    s.name AS student_name,
    sub.name AS subject_name
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.student_id
JOIN 
    subjects sub ON g.subject_id = sub.subject_id;

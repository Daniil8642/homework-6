-- create_database.sql

-- Створення таблиць
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    group_id INTEGER
);

CREATE TABLE groups (
    group_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE teachers (
    teacher_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE subjects (
    subject_id INTEGER PRIMARY KEY,
    name TEXT,
    teacher_id INTEGER
);

CREATE TABLE grades (
    grade_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    grade INTEGER,
    date_received DATE,
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);

-- Ініціалізація груп
INSERT INTO groups (name) VALUES
    ('Group A'),
    ('Group B'),
    ('Group C');

-- Ініціалізація викладачів
INSERT INTO teachers (name) VALUES
    ('Teacher 1'),
    ('Teacher 2'),
    ('Teacher 3');

-- Ініціалізація предметів
INSERT INTO subjects (name, teacher_id) VALUES
    ('Math', 1),
    ('Physics', 2),
    ('History', 3),
    ('Biology', 1),
    ('Chemistry', 2);

-- Ініціалізація студентів
INSERT INTO students (name, group_id) 
SELECT 
    Faker.Name.FullName(), 
    (RANDOM() % 3) + 1
FROM 
    generate_series(1, 50);

-- Ініціалізація оцінок
INSERT INTO grades (student_id, subject_id, grade, date_received)
SELECT 
    (RANDOM() % 50) + 1,
    (RANDOM() % 5) + 1,
    (RANDOM() % 5) + 2,  -- оцінки від 2 до 6
    '2024-02-09'::DATE - (RANDOM() % 30) * '1 day'::INTERVAL
FROM 
    generate_series(1, 500);

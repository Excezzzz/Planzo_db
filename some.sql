-- CREATE TABLE IF NOT EXISTS users (
--     id INTEGER PRIMARY KEY,
--     name TEXT NOT NULL,
--     age INTEGER
-- );

INSERT INTO users (id, name, age) VALUES (2, 'Миша', 1);


SELECT * FROM users;

DELETE FROM users;


-- Мы хотим поменять ему имя
UPDATE users SET
    name = 'FJFJFJF',
    age = 50
WHERE id = 2;
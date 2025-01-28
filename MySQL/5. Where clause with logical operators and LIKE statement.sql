CREATE DATABASE user_directory;

USE user_directory;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO users (name, email, age, city) VALUES
('John Doe', 'john.doe@example.com', 25, 'New York'),
('Jane Smith', 'jane.smith@example.com', 30, 'Los Angeles'),
('Alice Johnson', 'alice.j@example.com', 22, 'Chicago'),
('Bob Brown', 'bob.brown@example.com', 27, 'Houston'),
('Charlie Davis', 'charlie.davis@example.com', 29, 'Phoenix'),
('Diana Evans', 'diana.evans@example.com', 24, 'Philadelphia'),
('Ethan Green', 'ethan.green@example.com', 28, 'San Antonio'),
('Fiona Hall', 'fiona.hall@example.com', 26, 'San Diego'),
('George White', 'george.white@example.com', 31, 'Dallas'),
('Hannah Wright', 'hannah.wright@example.com', 23, 'San Jose');

SELECT * FROM users;

-- Where Clause
SELECT *
FROM users
WHERE age = 22;

-- AND OR NOT -- LOGICAL OPERATORS

SELECT *
FROM users
WHERE age >= 25 AND age < 30;

SELECT *
FROM users
WHERE (age >= 25 AND age < 30) AND city = 'New York';

SELECT *
FROM users
WHERE (age >= 25 AND age < 30) OR (city = 'New York' AND NOT age < 25 );

-- LIKE STATEMENT
-- % (ANY) and _ (SPECIFIC)
SELECT *
FROM users
WHERE name LIKE 'J%'
;

SELECT *
FROM users
WHERE city LIKE '%L__%'
;













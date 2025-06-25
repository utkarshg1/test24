-- Use the database
USE wakad_9am;

-- View all table names
SHOW TABLES;

-- View the table
SELECT * FROM emp_2;

SELECT * FROM dept_2;

-- Inner join
SELECT *
FROM emp_2
INNER JOIN dept_2
ON emp_2.did = dept_2.dept_id;

-- Particular columns from table
-- ONLY Writing Join in MySQL Refers to INNER JOIN
SELECT e.empid, e.fn, e.ln, e.sal, e.did, d.dname
FROM emp_2 AS e
JOIN dept_2 AS d
ON e.did = d.dept_id;

-- Left Join
SELECT e.empid, e.fn, e.ln, e.sal, e.did, d.dname
FROM emp_2 AS e
LEFT JOIN dept_2 AS d
ON e.did = d.dept_id;

-- Right Join
SELECT *
FROM emp_2
RIGHT JOIN dept_2
ON emp_2.did = dept_2.dept_id;

SELECT e.empid, e.fn, e.ln, d.dept_id, d.dname
FROM emp_2 AS e
RIGHT JOIN dept_2 AS d
ON e.did = d.dept_id;

-- Full Outer in MySQL
SELECT e.empid, e.fn, e.ln, e.sal, e.did, d.dept_id, d.dname
FROM emp_2 AS e
LEFT JOIN dept_2 as d
ON e.did = d.dept_id
UNION
SELECT e.empid, e.fn, e.ln, e.sal, e.did, d.dept_id, d.dname
FROM emp_2 AS e
RIGHT JOIN dept_2 as d
ON e.did = d.dept_id;

-- CROSS JOIN
SELECT e.fn, d.dname
FROM emp_2 AS e
CROSS JOIN dept_2 AS d;

-- Create emp3 Table
CREATE TABLE emp_3 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    manager_id INT 
);

-- Inserting Values in table
INSERT INTO emp_3
VALUES (1, "John Smith", 10000, 3),
	   (2, "Jane Anderson", 12000, 3),
       (3, "Tom Lanon", 15000, 4),
       (4, "Anne Connor", 20000, NULL),
       (5, "Jeremy York", 9000, 1);



-- SELF Join Inner Join
SELECT e.id, e.full_name, e.salary, e.manager_id, m.full_name
FROM emp_3 AS e
INNER JOIN emp_3 AS m
ON e.manager_id = m.id;

-- SELF LEFT JOIN
SELECT e.id, e.full_name, e.salary, e.manager_id, m.full_name
FROM emp_3 AS e
LEFT JOIN emp_3 AS m
ON e.manager_id = m.id;




    






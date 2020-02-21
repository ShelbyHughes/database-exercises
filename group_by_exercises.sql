USE employees;
SELECT DISTINCT title FROM titles;
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%E';
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
SELECT DISTINCT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY  COUNT(last_name);
SELECT COUNT(gender), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender ORDER BY COUNT(gender) DESC;
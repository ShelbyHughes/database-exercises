USE employees;
SELECT CONCAT(first_name, ' ', last_name) AS Name FROM employees WHERE last_name LIKE 'E%E' ORDER BY Name;
SELECT CONCAT(first_name, ' ', last_name) AS Name, DATEDIFF (NOW(), hire_date) AS 'Days with Company' FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%-12-25' ORDER BY DATEDIFF(NOW(), hire_date);
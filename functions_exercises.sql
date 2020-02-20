USE employees;
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%E' ORDER BY emp_no;
SELECT DATEDIFF (NOW(), hire_date) FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC;
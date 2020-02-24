USE employees;
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no=101010);

SELECT DISTINCT title FROM titles WHERE emp_no IN(SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT first_name, last_name FROM employees WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01');

SELECT d.dept_name AS 'dept_name' FROM departments d, dept_manager dm, employees e WHERE e.emp_no = dm.emp_no AND dm.dept_no = d.dept_no AND e.gender = 'F' and dm.to_date = '9999-01-01' GROUP BY d.dept_name;

SELECT e.first_name, e.last_name FROM employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no WHERE salary = (SELECT MAX(salary) FROM salaries);
USE employees;
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date = ( SELECT hire_date FROM employees WHERE emp_no=101010 );

SELECT e.first_name, e.last_name, t.title FROM employees e , titles t WHERE e.emp_no = t.emp_no AND  e.first_name = 'Aamod';

SELECT e.first_name AS 'first_name', e.last_name AS 'last_name' FROM employees e , dept_manager dm WHERE e.emp_no = dm.emp_no AND e.gender = 'F' AND dm.to_date = '9999-01-01';

SELECT d.dept_name AS 'dept_name' FROM departments d, dept_manager dm, employees e WHERE e.emp_no = dm.emp_no AND dm.dept_no = d.dept_no AND e.gender = 'F' and dm.to_date = '9999-01-01' GROUP BY d.dept_name;

SELECT e.first_name, e.last_name FROM employees e, salaries s WHERE salary IN ( SELECT DISTINCT MAX(salary) FROM salaries );

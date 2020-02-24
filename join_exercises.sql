USE employees;
SELECT d.dept_name AS 'Department Name' , CONCAT(e.first_name, ' ' , e.last_name) AS 'Department Manager' FROM departments AS d JOIN dept_manager AS dm on dm.dept_no = d.dept_no JOIN employees AS e ON e.emp_no = dm.emp_no WHERE dm.to_date = '9999-01-01' ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name' , CONCAT(e.first_name, ' ' , e.last_name) AS 'Department Manager' FROM departments AS d JOIN dept_manager AS dm on dm.dept_no = d.dept_no JOIN employees AS e ON e.emp_no = dm.emp_no WHERE dm.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY d.dept_name;

SELECT t.title AS 'Title' , COUNT(t.title) FROM titles AS t JOIN dept_emp AS de ON t.emp_no = de.emp_no JOIN departments AS d ON de.dept_no = d.dept_no  WHERE d.dept_no = 'd009' AND t.to_date = '9999-01-01' GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary' FROM employees AS e JOIN dept_manager AS dm on e.emp_no = dm.emp_no JOIN salaries AS s on dm.emp_no = s.emp_no JOIN departments AS d on d.dept_no = dm.dept_no WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01' ORDER BY d.dept_name;

SELECT CONCAT(e.first_name,' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name' FROM employees AS e JOIN dept_emp AS de ON e.emp_no = de.emp_no JOIN departments d ON de.dept_no = d.dept_no JOIN dept_manager AS dm ON d.dept_no = dm.dept_no JOIN employees AS em ON dm.emp_no = em.emp_no WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01' ORDER BY d.dept_name;
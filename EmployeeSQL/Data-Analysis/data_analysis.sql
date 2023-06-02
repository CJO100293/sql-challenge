-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON emp.emp_no = sal.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp.first_name, emp.last_name, emp.hire_date 
FROM employees as emp
WHERE hire_date BETWEEN '01-01-1986' AND '12-31-1986'
ORDER BY hire_date;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept.dept_no, dept.dept_name, dept_mgr.emp_no, emp.last_name, emp.first_name
FROM departments as dept
INNER JOIN department_manager as dept_mgr
ON dept.dept_no = dept_mgr.dept_no 
INNER JOIN employees as emp
ON emp.emp_no = dept_mgr.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM department_employee as dept_emp
INNER JOIN employees as emp
ON dept_emp.emp_no = emp.emp_no
INNER JOIN departments as dept
ON dept.dept_no = dept_emp.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT emp.first_name, emp.last_name, emp.sex
FROM employees as emp
WHERE emp.first_name LIKE 'Hercules' AND emp.last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM department_employee as dept_emp
INNER JOIN employees as emp
ON dept_emp.emp_no = emp.emp_no
INNER JOIN departments as dept
ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM department_employee as dept_emp
INNER JOIN employees as emp
ON dept_emp.emp_no = emp.emp_no
INNER JOIN departments as dept
ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). 
Select emp.last_name, count(emp.last_name) AS "Last Name Frequency"
FROM employees as emp
GROUP BY emp.last_name
ORDER BY emp.last_name DESC;
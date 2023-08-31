--List the employee number, last name, first name, sex, and salary of each employee 
SELECT 

a.emp_no,
a.last_name, 
a.first_name, 
a.sex, 
b.salary

FROM employees a
LEFT JOIN salaries b
ON a.emp_no = b.emp_no
ORDER BY emp_no Asc;


--List the first name, last name, and hire date for the employees who were hired in 1986 

Select 

first_name,
last_name,
hire_date

FROM employees

Where hire_date BETWEEN '01/01/1986' AND '12/31/1986'; 

--List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT

a.dept_no,
c.dept_name,
a.emp_no,
b.last_name,
b.first_name

FROM dept_manager a

LEFT JOIN employees b 

ON a.emp_no = b.emp_no

LEFT JOIN departments c 

ON a.dept_no = c.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name 

SELECT 

c.dept_no,
a.emp_no, 
a.last_name, 
a.first_name, 
c.dept_name

FROM employees as a

LEFT JOIN dept_emp as g  

ON a.emp_no = g.emp_no

LEFT JOIN departments as c

ON g.dept_no = c.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT 
a.first_name,
a.last_name, 
a.sex
FROM employees a
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name 

SELECT 
a.emp_no,
a.last_name,
a.first_name,
d.dept_name

FROM employees a

LEFT JOIN  dept_emp k  

ON a.emp_no = k.emp_no

LEFT JOIN departments d

ON k.dept_no = d.dept_no

WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 

SELECT

a.emp_no,
a.last_name,
a.first_name,
V.dept_name

FROM employees a

LEFT JOIN  dept_emp U 

ON a.emp_no = U.emp_no

LEFT JOIN departments V

ON u.dept_no = V.dept_no

WHERE V.dept_name IN ('Sales','Development');


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 

SELECT 

last_name,

COUNT(last_name) AS "Total"

FROM employees

GROUP BY last_name

HAVING Count(last_name) > 2

ORDER BY "Total" DESC;






























CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT

);

CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50)	
);

SELECT*FROM employees
drop table employees

CREATE TABLE employees (
	emp_no INT UNIQUE,
	emp_title_id VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	sex CHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

copy employees
FROM 'C:\Users\Erik\Homework\sql-challenge\data\employees.csv'
DELIMITER ','
CSV HEADER;

SELECT*FROM employees
Where First_name <> 'True'



CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(50),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT*FROM dept_manager


CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


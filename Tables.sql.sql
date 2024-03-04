--TABLE SETUP
DROP TABLE departments;
CREATE TABLE departments (dept_no VARCHAR(30) PRIMARY KEY,
						 dept_name VARCHAR(30));
SELECT * FROM departments;



DROP TABLE titles;
CREATE TABLE titles (title_id varchar(20) NOT NULL,
	title varchar(30) NOT NULL,
	PRIMARY KEY (title_id));
	SELECT * FROM titles;





DROP TABLE employees;
CREATE TABLE employees(emp_no INT NOT NULL,
					   emp_title_id VARCHAR(30) NOT NULL,
					   birth_date DATE NOT NULL,
					   first_name VARCHAR(30) NOT NULL,
					   last_name VARCHAR(30) NOT NULL,
					   sex VARCHAR(4) NOT NULL,
					   hire_date DATE NOT NULL,
					PRIMARY KEY(emp_no),
					   FOREIGN KEY (emp_title_id) REFERENCES titles (title_id));
SELECT * FROM employees;


DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no varchar(20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
SELECT * FROM dept_emp;


DROP TABLE dept_manager;


CREATE TABLE dept_manager(
	dept_no varchar(20) NOT NULL,
	emp_no int NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;




DROP TABLE salaries;
CREATE TABLE salaries (emp_no INT NOT NULL,
					   salary INT NOT NULL,
					   PRIMARY KEY (emp_no),
					   FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);
SELECT * FROM salaries;

-----------Creat database 'employees_db'-----------------
--Creat tables
--1
CREATE TABLE departments (
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR(30)
);

--2
CREATE TABLE titles (
  title_id VARCHAR(30) PRIMARY KEY,
  title VARCHAR(30)
);

--3
CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY,
  emp_title_id VARCHAR,
  birth_date DATE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex VARCHAR(30),
  hire_date DATE,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--4
CREATE TABLE salaries (
  emp_no INTEGER PRIMARY KEY,
  salary INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--5
CREATE TABLE dept_emp (
  sepdept INTEGER,
  dept_no VARCHAR(30),
  PRIMARY KEY (sepdept, dept_no),
  FOREIGN KEY (sepdept) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--6
CREATE TABLE dept_manager (
  dep VARCHAR(30),
  emp_no INTEGER,
  PRIMARY KEY (dep, emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dep) REFERENCES departments(dept_no)
);

------------------------------------------------------

------Insert data from csv----------------------------
--Check the data
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;

--Test foreign key works
INSERT INTO employees (emp_no, emp_title_id)
VALUES (1,'Test');
INSERT INTO salaries (emp_no, salary)
VALUES (1,0);
INSERT INTO dept_emp (sepdept, dept_no)
VALUES (1,1);
INSERT INTO dept_manager (dep, emp_no)
VALUES (1,1);
-------------------------------------------------------



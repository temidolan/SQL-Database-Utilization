DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
--create department table
CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(50)
);
--Create table dept_emp
CREATE TABLE  dept_emp(
	emp_no VARCHAR(10),
	dept_no VARCHAR(10)
);
--Create table dept_manager
CREATE TABLE  dept_manager(
	dept_no VARCHAR(10),
	emp_no VARCHAR(10)
);
--Create table employees
CREATE TABLE  employees(
	emp_no VARCHAR(10),
	emp_title VARCHAR(100),
	birth_date VARCHAR(100),
	first_name VARCHAR(100),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date VARCHAR(100)
);
--Create table salaries
CREATE TABLE  salaries(
	emp_no VARCHAR(10),
	salary VARCHAR(100)
);
--Create table titles
CREATE TABLE  titles(
	title_id VARCHAR(100),
	title VARCHAR(100)
);
--View table columns and datatypes
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salaries
FROM "Employees"
JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT "Employees".first_name, "Employees".last_name, "Employees".hire_date
FROM "Employees"
WHERE "Employees".hire_date BETWEEN '01/01/1986' and '12/31/1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT "Departments".dept_no, "Departments".dept_name,"Dept_manager".emp_no, "Employees".last_name, "Employees".first_name
FROM "Departments"
JOIN "Dept_manager"
ON "Departments".dept_no = "Dept_manager".dept_no
JOIN "Employees"
ON "Dept_manager".emp_no = "Employees".emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Employees".emp_no,"Employees".last_name, "Employees".first_name,"Departments".dept_name
FROM "Dept_emp"
JOIN "Employees"
on "Employees".emp_no= "Dept_emp".emp_no
JOIN "Departments"
on "Dept_emp".dept_no= "Departments".dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT "Employees".emp_no,"Employees".last_name, "Employees".first_name,"Departments".dept_name
FROM "Dept_emp"
JOIN "Employees"
on "Employees".emp_no= "Dept_emp".emp_no
JOIN "Departments"
on "Dept_emp".dept_no= "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Employees".emp_no,"Employees".last_name, "Employees".first_name,"Departments".dept_name
FROM "Dept_emp"
JOIN "Employees"
on "Employees".emp_no= "Dept_emp".emp_no
JOIN "Departments"
on "Dept_emp".dept_no= "Departments".dept_no
WHERE "Departments".dept_name = 'Sales'
OR "Departments".dept_name='Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT "Employees".last_name,
COUNT(*)
FROM "Employees"
GROUP BY "Employees".last_name
ORDER BY
COUNT (*) DESC;









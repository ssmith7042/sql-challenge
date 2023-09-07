--List the employee number, last name, first name, sex, 
--and salary of each employee.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From Employees e
Inner Join Salaries s ON e.emp_no=s.emp_no;

--List the first name, last name, and hire date for 
--the employees who were hired in 1986.

Select first_name, last_name, hire_date
From Employees
WHERE hire_date LIKE '1986%';

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

Select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
From Employees as e
Inner Join Department_Managers on Department_Managers.emp_no=e.emp_no
Inner Join Departments as d on Department_Managers.dept_no=d.dept_no;

--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.

Select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
From Employees as e
Inner Join Department_Employees on Department_Employees.emp_no=e.emp_no
Inner Join Departments as d on Department_Employees.dept_no=d.dept_no

--List first name, last name, and sex of each employee whose 
--first name is Hercules and whose last name begins with the letter B.

Select first_name, last_name, sex
From Employees
Where first_name='Hercules' AND last_name LIKE 'B%'

--List each employee in the Sales department, including their employee number, 
--last name, and first name.

Select e.emp_no, e.last_name, e.first_name
From Employees e
Inner Join Department_Employees on Department_Employees.emp_no=e.emp_no
Inner Join Departments on Departments.dept_no=Department_Employees.dept_no
Where dept_name='Sales'

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name

Select e.emp_no, e.last_name, e.first_name, d.dept_name
From Employees as e
Inner Join Department_Employees on Department_Employees.emp_no=e.emp_no
Inner Join Departments as d on d.dept_no=Department_Employees.dept_no
Where dept_name='Sales' or dept_name='Development'

--List the frequency counts, in descending order, of all the 
--employee last names (that is, how many employees share each last name).

Select last_name, COUNT(*)
From Employees 
Group by (last_name) 
Order by 2 DESC;
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM public."Employees" AS e
INNER JOIN public."DeptEmp" AS de
ON e.emp_no = de.emp_no
INNER JOIN public."Departments" AS d
ON de.dept_no = d.dept_no
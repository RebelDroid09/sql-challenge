SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM public."DeptManager" AS dm
INNER JOIN public."Departments" as d
ON dm.dept_no = d.dept_no
INNER JOIN public."Employees" as e
ON dm.emp_no = e.emp_no
SELECT e.emp_no, e.last_name, e.sex, s.salary 
FROM public."Employees" as e
INNER JOIN public."Salaries" as s
ON e.emp_no = s.emp_no
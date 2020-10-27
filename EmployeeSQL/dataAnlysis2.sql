SELECT e.first_name, e.last_name, e.hire_date
FROM public."Employees" AS e
WHERE EXTRACT(YEAR FROM e.hire_date) = '1986'
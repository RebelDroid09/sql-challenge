SELECT e.first_name, e.last_name, e.sex
FROM public."Employees" AS e
WHERE e.first_name = 'Hercules' and LEFT(e.last_name, 1) = 'B';
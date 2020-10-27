SELECT e.last_name, COUNT(e.last_name) AS counted
FROM public."Employees" AS e
GROUP BY e.last_name
ORDER BY counted DESC

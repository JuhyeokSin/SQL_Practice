/* Employee Salaries

Write a query that prints a list of employee names for employees
in Employee having a salary greater than $2000 per month who have been employees
for less than  months.
Sort your result by ascending employee_id.
*/
SELECT name
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC

/* 184. Department Highest Salary

Write a SQL query to find employees who have the highest salary in each of the departments.

The Employee table holds all employees.
Every employee has an Id, a salary, and there is also a column for the department Id.
+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |
+----+-------+--------+--------------+

The Department table holds all departments of the company.
+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+

*/
SELECT d.Name AS Department, e.name AS Employee, e.Salary
FROM Employee e JOIN Department d ON(e.DepartmentId=d.Id)
WHERE (e.DepartmentId, e.Salary)
IN(
  SELECT DepartmentId, MAX(Salary)
  FROM Employee
  GROUP BY DepartmentId
  )

/* 177. Nth Highest Salary
Write a SQL query to get the nth highest salary from the Employee table
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+

*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N-1;
  RETURN (
    SELECT
    IFNULL((SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC LIMIT 1 OFFSET N),
    NULL) AS getNthHighestSalary
  );
END

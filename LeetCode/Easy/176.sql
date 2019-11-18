/* 176. Second Highest Salary
Write a SQL query to get the second highest salary from the Employee table
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
*/

SELECT
  IFNULL(
    (SELECT DISTINCT Salary
     FROM Employee
     ORDER BY Salary DESC
     LIMIT 1 OFFSET 1),
     NULL) AS SecondHighestSalary

/*
Syntax of IFNULL:
IFNULL(expression, alt_value)

Parameter Values
- expression: Required. The expression to test whether is NULL
- alt_value:  Required. The value to return if expression is NULL

Technical Details
- Works in: From MySQL 4.0

Source:
https://www.w3schools.com/sql/func_mysql_ifnull.asp
*/

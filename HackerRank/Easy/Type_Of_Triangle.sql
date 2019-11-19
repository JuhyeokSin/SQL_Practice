/* Type of Triangle
Write a query identifying the type of each record in the TRIANGLES table
using its three side lengths.
Output one of the following statements for each record in the table:

- Equilateral: It's a triangle with 3 sides of equal length.
- Isosceles: It's a triangle with 2 sides of equal length.
- Scalene: It's a triangle with 3 sides of differing lengths.
- Not A Triangle: The given values of A, B, and C don't form a triangle.

+-------------+---------+
|    Column   | Type    |
+-------------+---------+
|     A       | Integer |
|     B       | Integer |
|     C       | Integer |
+-------------+---------+

*/

SELECT
  CASE
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN "Not A Triangle"
    WHEN A=B AND B=C THEN "Equilateral"
    WHEN A=B OR A=C OR B=C THEN "Isosceles"
    ELSE "Scalene"
  END
FROM TRIANGLES;

/*
*** CASE WHEN ***

Syntax:
CASE
  WHEN condition 1 THEN result 1
  WHEN condition 2 THEN result 2
  WHEN condition N THEN result N
  ELSE result
END;

Parameter Values:
- condition1, condition2, ... : Required. The conditions.
                            : These are evaluated in the same order
                              as they are listed.
- result1, result2, ... : Required. The value to return
                        once a condition is true.

Technical Details
- Works in: From MySQL 4.0

Source:
https://www.w3schools.com/sql/func_mysql_case.asp
*/

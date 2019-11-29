/*
You're a math teacher at an elementary school. Today you taught your class basic arithmetic operations ("+", "-", "*", "/") and now you need to give the students some homework. You have a lot of expressions in the format a <operation> b = c, where a, b, and c are some integers and operation is one of the operations given above.

Information about these expressions is stored in the table expressions, which has the structure:
id: the unique operation id;
a: an integer;
b: an integer;
operation: one of the operations given above ("+", "-", "*", or "/");
c: an integer.

Since you have many students and checking all their answers manually is a lot of work, you want to streamline the process by automatically identifying all the expressions that are correct. Given the table expressions, build the resulting table as follows: The table should have the same columns as the initial table does, but it should only contain those rows that represent correct expressions. The rows should be ordered by id.
*/
SELECT *
FROM expressions
WHERE (operation = '+' AND a+b=c) OR
      (operation = '-' AND a-b=c) OR
      (operation = '*' AND a*b=c) OR
      (operation = '/' AND a/b=c);
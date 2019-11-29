/*
You are managing a small newspaper subscription service. Anyone who uses it can subscribe to a large number of different newspapers for a full year or just a half year.

The information about subscriptions is stored in the full_year and half_year tables, which have the following structures:

full_year:
- id: the unique subscription ID;
- newspaper: the newspaper's name;
- subscriber: the name of the subscriber.

half_year
- id: the unique subscription ID;
- newspaper: the newspaper's name;
- subscriber: the name of the subscriber.

Given the full_year and half_year tables, compose the result as follows: The resulting table should have one column subscriber that contains all the distinct names of anyone who is subscribed to a newspaper with the word Daily in its name. The table should be sorted in ascending order by the subscribers' first names.
*/


SELECT subscriber
FROM full_year
WHERE newspaper LIKE '%Daily%'
UNION
SELECT subscriber
FROM half_year
WHERE newspaper LIKE '%Daily%'
ORDER BY SUBSTRING_INDEX(subscriber, " ", 1);

/* UNION operator
: is used to combine the result sets of 2 or more SELECT statements.
It removes duplicate rows between the various SELECT statements.
: Each SELECT statement within the UNION operator must have the same number of fields in the result sets with similar data types.

<Syntax>
SELECT expression1, expression2, ... expression_n
FROM tables
[WHERE conditions]
UNION [DISTINCT]
SELECT expression1, expression2, ... expression_n
FROM tables
[WHERE conditions];


Source: https://www.techonthenet.com/mysql/union.php
*/
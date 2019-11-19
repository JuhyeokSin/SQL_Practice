/* revising_the_select_query_1
Query all columns for all American cities in CITY
with populations larger than 100000.
The CountryCode for America is USA.
*/
SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

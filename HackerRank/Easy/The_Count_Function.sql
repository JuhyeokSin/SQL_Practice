/*
Query a count of the number of cities in CITY having
a population larger than 100,000
*/

SELECT Count(Name) FROM City
where Population > 100000

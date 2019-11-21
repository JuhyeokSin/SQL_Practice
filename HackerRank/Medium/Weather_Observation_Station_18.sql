/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
- a happends to equal the minimum value in Northern Latitude (LAT_N in Station)
- b happends to equal the minimum value in Western Longitude (LONG_W in Station)
- c happends to equal the maximum value in Northern Latitude (LAT_N in Station)
- d happends to equal the maximum value in Western Longitude (LONG_W in Station)

Query the Manhanttan Distance between point P1 and P2 and
round it to a scale of 4 decimal places.
*/

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)), 4) AS Manhattan_Distance
FROM STATION

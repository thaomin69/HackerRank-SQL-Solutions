SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY, 1) NOT IN ('a','e','i','u','o') AND RIGHT(CITY, 1) NOT IN ('a','e','i','u','o');
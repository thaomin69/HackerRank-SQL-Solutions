SELECT CAST(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)) 
            AS DECIMAL(10, 4))
FROM STATION;
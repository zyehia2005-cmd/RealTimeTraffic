USE TrafficDataWarehouse;
GO

SELECT 
    DATEPART(HOUR, f.count_date) AS [hour],
    AVG(f.cars_and_taxis + f.LGVs) AS avg_vehicle_count
FROM FACT_TRAFFIC_COUNTS f
GROUP BY DATEPART(HOUR, f.count_date)
ORDER BY [hour];

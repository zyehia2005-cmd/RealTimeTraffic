USE TrafficDataWarehouse;
GO

SELECT 
    rd.road_category,
    AVG(f.cars_and_taxis + f.LGVs + f.buses_and_coaches) AS avg_traffic
FROM FACT_TRAFFIC_COUNTS f
JOIN DIM_ROAD rd 
    ON f.road_name = rd.road_name
GROUP BY rd.road_category
ORDER BY avg_traffic DESC;

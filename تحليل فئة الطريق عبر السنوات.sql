SELECT 
    rd.road_category,
    f.year,
    AVG(f.cars_and_taxis + f.LGVs + f.buses_and_coaches) AS avg_traffic
FROM FACT_TRAFFIC_COUNTS f
JOIN DIM_ROAD rd ON f.road_name = rd.road_name
GROUP BY rd.road_category, f.year
ORDER BY rd.road_category, f.year;

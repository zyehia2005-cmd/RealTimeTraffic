SELECT 
    r.region_name,
    rd.road_category,
    SUM(f.all_motor_vehicles) AS total_traffic
FROM FACT_TRAFFIC_COUNTS f
JOIN DIM_REGION r ON f.region_id = r.region_id
JOIN DIM_ROAD rd ON f.road_name = rd.road_name
GROUP BY r.region_name, rd.road_category
ORDER BY r.region_name, total_traffic DESC;

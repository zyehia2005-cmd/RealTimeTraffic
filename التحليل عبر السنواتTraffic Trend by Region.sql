SELECT
    r.region_name,
    f.year,
    SUM(f.all_motor_vehicles) AS total_vehicles
FROM FACT_TRAFFIC_COUNTS f
JOIN DIM_REGION r ON f.region_id = r.region_id
GROUP BY r.region_name, f.year
ORDER BY r.region_name, f.year;

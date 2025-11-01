SELECT
    la.local_authority_name,
    r.region_name,
    SUM(f.pedal_cycles) AS total_pedal_cycles,
    SUM(f.two_wheeled_motor_vehicles) AS total_motorbikes,
    SUM(f.cars_and_taxis) AS total_cars,
    SUM(f.buses_and_coaches) AS total_buses,
    SUM(f.LGVs) AS total_LGVs,
    SUM(f.all_HGVs) AS total_HGVs,
    SUM(f.all_motor_vehicles) AS total_vehicles
FROM FACT_TRAFFIC_COUNTS f
JOIN DIM_LOCAL_AUTHORITY la ON f.local_authority_id = la.local_authority_id
JOIN DIM_REGION r ON f.region_id = r.region_id
GROUP BY la.local_authority_name, r.region_name
ORDER BY total_vehicles DESC;

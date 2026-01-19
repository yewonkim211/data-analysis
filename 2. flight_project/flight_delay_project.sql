

--1. 
SELECT
  month,
  ROUND(AVG(cancelled) * 100, 2) AS cancellation_rate_pct,
  ROUND(AVG(COALESCE(weather_delay, 0)), 2) AS avg_weather_delay,
  ROUND(AVG(COALESCE(late_aircraft_delay, 0)), 2) AS avg_late_aircraft_delay,
  COUNT(*) AS flights
FROM flight_data
GROUP BY month
ORDER BY month;

--2. 
SELECT
  day_of_week,
  ROUND(AVG(cancelled) * 100, 2) AS cancellation_rate_pct,
  ROUND(AVG(COALESCE(weather_delay, 0)), 2) AS avg_weather_delay,
  ROUND(AVG(COALESCE(late_aircraft_delay, 0)), 2) AS avg_late_aircraft_delay,
  COUNT(*) AS flights
FROM flight_data
GROUP BY day_of_week
ORDER BY day_of_week;

--3. 
SELECT
  origin,
  origin_city_name,
  origin_state_nm,
  SUM(COALESCE(weather_delay, 0)) AS total_weather_delay,
  COUNT(*) AS flights
FROM flight_data
GROUP BY origin, origin_city_name, origin_state_nm
ORDER BY total_weather_delay DESC
LIMIT 10;



--4. 
SELECT
  CAST(dep_time / 100 AS INTEGER) AS dep_hour,
  COUNT(*) AS flights,
  ROUND(AVG(COALESCE(weather_delay, 0)), 2) AS avg_weather_delay,
  ROUND(AVG(COALESCE(late_aircraft_delay, 0)), 2) AS avg_late_aircraft_delay,
  ROUND(AVG(cancelled) * 100, 2) AS cancellation_rate_pct
FROM flight_data
WHERE dep_time IS NOT NULL
GROUP BY dep_hour
ORDER BY dep_hour;







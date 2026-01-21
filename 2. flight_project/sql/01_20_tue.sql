SELECT *
from flight_data fd ;

--1.최근 fl_date 20개
SELECT fl_date
FROM flight_data
ORDER BY fl_date DESC
LIMIT 20;

--2. cancelled=1 인 항공편만 50개 보기
SELECT *
From flight_data 
where cancelled  = 1
Limit 50;

--3. distance가 가장 긴 항공편 TOP 30 (origin, distance, fl_date)
SELECT origin, distance, fl_date
from flight_data 
ORDER by distance DESC
Limit 30;

--4. weather_delay가 있는(>0) 항공편만 보고, 지연 큰 순으로 정렬

SELECT *
from flight_data 
WHERE  weather_delay > 0 ;


--5. dep_time이 NULL인 행이 있는지 찾아보기 (몇 개?)




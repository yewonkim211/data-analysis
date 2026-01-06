SELECT COUNT(*)
FROM customers;


SELECT *
FROM customers
LIMIT 10;



SELECT
  country,
  ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM customers
GROUP BY country
ORDER BY churn_rate DESC;

SELECT
  gender,
  ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM customers
GROUP BY gender;

SELECT
  CASE
    WHEN age < 30 THEN 'Under 30'
    WHEN age BETWEEN 30 AND 39 THEN '30s'
    WHEN age BETWEEN 40 AND 49 THEN '40s'
    ELSE '50+'
  END AS age_group,
  ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM customers
GROUP BY age_group
ORDER BY churn_rate DESC;


SELECT
  CASE WHEN balance > 0 THEN 'Has Balance' ELSE 'No Balance' END AS balance_group,
  ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM customers
GROUP BY balance_group;


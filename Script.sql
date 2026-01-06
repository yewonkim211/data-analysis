--1. 
SELECT
  COUNT(*) AS total_customers,
  AVG(churn) AS churn_rate
FROM Bank_Customer_Churn_Prediction bccp ;

--2. 
SELECT
  country,
  COUNT(*) AS total_customers,
  AVG(churn) AS churn_rate
FROM Bank_Customer_Churn_Prediction bccp
GROUP BY country
ORDER BY churn_rate DESC;

--3. 
SELECT
  gender,
  COUNT(*) AS total_customers,
  AVG(churn) AS churn_rate
FROM Bank_Customer_Churn_Prediction bccp
GROUP BY gender;

--4.
SELECT
  active_member,
  COUNT(*) AS total_customers,
  AVG(churn) AS churn_rate
FROM Bank_Customer_Churn_Prediction bccp
GROUP BY active_member;

--5.
SELECT
  products_number,
  COUNT(*) AS total_customers,
  AVG(churn) AS churn_rate
FROM Bank_Customer_Churn_Prediction bccp
GROUP BY products_number
ORDER BY products_number;

--6.
SELECT
  CASE
    WHEN balance = 0 THEN 'Zero Balance'
    WHEN balance < 50000 THEN 'Low Balance'
    WHEN balance < 100000 THEN 'Mid Balance'
    ELSE 'High Balance'
  END AS balance_group,
  COUNT(*) AS total_customers,
  AVG(churn) AS churn_rate
FROM Bank_Customer_Churn_Prediction bccp
GROUP BY balance_group
ORDER BY churn_rate DESC;

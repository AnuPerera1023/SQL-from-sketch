-- retrieve all customer data

SELECT *
FROM customers

-- retrieve each customer's name, country and score

SELECT 
first_name,
country,
score

FROM customers

-- retrieve customer with a score not equal to 0

SELECT *
FROM customers
WHERE score != 0

-- retrieve customer from Germany

SELECT *
FROM customers
WHERE country = 'Germany'

-- retrieve all customer nd sort them by highest score first

SELECT*
FROM customers
ORDER BY score DESC

-- retrieve all customer nd sort them by their country and  highest score first

SELECT*
FROM customers
ORDER BY country ASC, score DESC

-- find the total score of each country

SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country

/* avg score for each country considering only customer with a score not equal 0 
and return only those countries with an avg score greater than 430 */

SELECT
	country,
	AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430


-- select unique list of all countries 

SELECT DISTINCT country
FROM customers

-- retrieve top 3 customer with hoghest scores

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- get the 2 most recent orders

SELECT *
FROM orders
ORDER BY order_date DESC

-- insert data in to table

INSERT INTO customers(id,first_name, country, score)
VALUES (6, 'anna', 'india', NULL),
		(7, 'madu', NULL, 100)

SELECT * FROM customers

-- insert data from customers to tables

-- change the score of customer 6 to 0

UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 6

SELECT * FROM customers

--delete customers with id is greater than 5

DELETE FROM customers
WHERE id >5

SELECT * FROM customers


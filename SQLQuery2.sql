-- create a new table 

CREATE TABLE persons(
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY(id)
)

SELECT * FROM persons

-- add a column
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

SELECT * FROM persons

-- delete a column

ALTER TABLE persons
DROP COLUMN phone


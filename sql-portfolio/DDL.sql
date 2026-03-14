-- Data Defined Language 
/* Create a new table called people
with columns: id, person_name, birth_date, and phone */

CREATE TABLE people (
id INT NOT NULL ,
person_name VARCHAR (50),
birth_date DATE,
phone VARCHAR (15) NOT NULL 
CONSTRAINT pk_people PRIMARY KEY (id)
)

SELECT * FROM people 

ALTER TABLE people 
ADD email VARCHAR(50) NOT NULL 

SELECT * FROM people

ALTER TABLE people 
DROP COLUMN phone 

SELECT * FROM people 

DROP TABLE people 
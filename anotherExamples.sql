CREATE DATABASE people_db;

USE people_db;

CREATE TABLE developers(
	id INTEGER(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    isCoding BOOLEAN NOT NULL,
    age INTEGER(3)
);

USE people_db;
INSERT INTO developers(name, isCoding, age)
VALUE("Joe",false, 0),("Doe", true, 1);

SELECT * FROM developers
WHERE name = "Joe";

USE people_db;
UPDATE developers
SET name = "Minh"
WHERE name = "Joe";
SELECT * FROM developers;

DELETE FROM developers
WHERE name = "Minh";
SELECT * FROM developers;

TRUNCATE developers;
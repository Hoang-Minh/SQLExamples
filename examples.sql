-- Create a database called something_db
CREATE DATABASE something_db;

-- create a table with an id integer that increments for each item, has a max
-- of length of 11 digits, and can never be null, a username string that has a max 
-- length of 30 characters and can never be null.....
CREATE TABLE something_table(
    id INTEGER(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    username VARCHAR(30) NOT NULL,
    pword VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL
);

-- Give me every item in the table
SELECT * FROM something_table;


-- Give me every item in the table
-- where the username is Richie
SELECT * FROM something_table
WHERE username = "Richie";

-- Give me all the username from something_table
-- and order them by their password in descending order
SELECT username FROM something_table
ORDER BY psword DESC;

-- Give me all the username from something_table
-- and order them by their password in ascending order
SELECT username FROM something_table
ORDER BY psword ASC;

-- The next two do the same thing
INSERT INTO something_table (username, pword, email)
VALUES("Joe", "111", "abc@abc.com");

INSERT INTO something_table
SET username = "Joe", pword = "111", email = "abc@abc.com";

-- Change the username of any item in something_table with
-- the password test1234 to Marry
UPDATE something_table
WHERE psword = "1234"
SET username = "Marry";

-- Add testdata column to something_table
ALTER TABLE something_table
ADD testdata INTEGER(11);

-- Delete the column testdata
ALTER TABLE something_table
DROP testdata;

-- Use something table
USE something_table;

-- Delete something_table
DELETE something_table;

-- Delete something_db
DELETE something_db;

-- Delete item with username Richie12 from something_table
DELETE FROM something_table
WHERE username = "'Richine12'"

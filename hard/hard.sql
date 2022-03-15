-- Hard: Make a copy of your Medium Challenge Write out the queries that would add the director’s
--  First Name and Last Name into two separate columns. Create a query that puts the names together. 
--  Create a query to put the list in alphabetical order by the last name from A-Z After you order the list,
--  remove the Movies where the Last Name ends with ”R-Z” Write a query where the first three appear

CREATE TABLE top_10_movies (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (220),
    release_date DATE,
    rating VARCHAR (20)
);

INSERT INTO top_10_movies (title, release_date, rating)
VALUES 
("Spider-Man: No Way Home", "2021-12-17", 'PG-13'),
("Dune", "2021-10-22", 'PG-13'),
("The Adam Project", "2022-03-11", 'PG-13'),
("Redeeming Love", "2022-01-21", 'PG-13'),
("Black Widow", "2021-07-09", 'PG-13'),
("A Walk to Remember", "2002-01-25", 'PG'),
("Avengers: Endgame", "2019-04-26", 'PG-13'),
("The Hate U Give", "2018-09-07", 'PG-13'),
("Always Be My Maybe", "2019-05-29", 'PG-13'),
("The Lucky One", "2012-04-20", 'PG-13');

-- Write out the queries that would add the director’s First Name and Last Name into two separate columns.
ALTER TABLE top_10_movies
ADD first_name VARCHAR(300),
ADD last_name VARCHAR (300);

UPDATE top_10_movies
SET first_name="Jon", last_name="Watts"
WHERE id = 1;

UPDATE top_10_movies
SET first_name="Dennis", last_name="Villeneuve"
WHERE id = 2;

UPDATE top_10_movies
SET first_name="Shawn", last_name="Levy"
WHERE id = 3;

UPDATE top_10_movies
SET first_name="D.J.", last_name="Caruso"
WHERE id = 4;

UPDATE top_10_movies
SET first_name="Cate", last_name="Shortland"
WHERE id = 5;

UPDATE top_10_movies
SET first_name="Adam", last_name="Shankman"
WHERE id = 6;

UPDATE top_10_movies
SET first_name="Anthony", last_name="Russo"
WHERE id = 7;

UPDATE top_10_movies
SET first_name="George", last_name="Tillman"
WHERE id = 8;

UPDATE top_10_movies
SET first_name="Nahnatchka", last_name="Khan"
WHERE id = 9;

UPDATE top_10_movies
SET first_name="Scott", last_name="Hicks"
WHERE id = 10;

SELECT * FROM top_10_movies;
-- Create a query that puts the names together.
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM top_10_movies;

-- Create a query to put the list in alphabetical order by the last name from A-Z After you order the list
SELECT * FROM top_10_movies
ORDER BY last_name;

-- remove the Movies where the Last Name ends with ”R-Z”
DELETE FROM top_10_movies
WHERE last_name BETWEEN "R" AND "Z";

SELECT * FROM top_10_movies;

-- Write a query where the first three appear
SELECT * FROM top_10_movies
ORDER BY last_name
LIMIT 3;
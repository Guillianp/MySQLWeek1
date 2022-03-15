-- Medium: Create a table with your top 10 movies. Include title, release date, and rating Create a query 
-- that pulls all movies, in order of release date, where the title includes the letter “s”.

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

SELECT * FROM top_10_movies;

-- Create a query that pulls all movies, in order of release date, where the title includes the letter “s”
SELECT * FROM top_10_movies

WHERE title LIKE "%s%"
ORDER BY release_date DESC;
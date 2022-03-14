-- Easy: Create a table with your top five favorite books with Title, Publish Date, and Author First/Last Name  
-- Create a query to add in two new books Remove the oldest book. Provide an additional query giving the sum of all books.

CREATE TABLE fav_books (
  title VARCHAR(500),
  publication_date DATE,
  author_first_name VARCHAR(300),
  author_last_name VARCHAR(300),
  copies_owned INT);
  
INSERT INTO fav_books
(title,
publication_date,
author_first_name,
author_last_name,
copies_owned) 
VALUES ('The Alchemist',
'1988-12-15',
'Paulo', 
'Coehlo',
2),
('Where the Wild Things Are',
'1963-01-06',
'Maurice', 
'Sendak',
3),
('Cant Hurt Me',
'2018-11-15',
'David', 
'Goggins',
3),
('Farenheit 451',
'1953-10-19',
'Ray', 
'Bradbury',
4),
('Untamed',
'2020-03-10',
'Glennon', 
'Doyle',
1);

SELECT * FROM fav_books;

-- Create a query to add in two new books Remove the oldest book.

INSERT INTO fav_books
(title,
publication_date,
author_first_name,
author_last_name,
copies_owned) 
VALUES ('Relationship Goals',
'2020-04-28',
'Mike', 
'Todd',
1),
('Everything is Figureoutable',
'2019-09-10',
'Marie', 
'Forleo',
1);

SELECT * FROM fav_books;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM fav_books
WHERE publication_date = '1953-10-19';

SELECT * FROM fav_books;

-- Provide an additional query giving the sum of all books.
SELECT COUNT(title)
FROM fav_books;

SELECT SUM(copies_owned)
FROM fav_books;

SELECT * FROM fav_books;










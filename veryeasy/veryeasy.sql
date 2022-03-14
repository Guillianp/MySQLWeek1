CREATE DATABASE mysql_week1;
-- Very Easy: Create a table with your top three cars 
-- and include make, model, year. Create a query to add in 
-- two more cars

CREATE TABLE top_3_cars(
make VARCHAR (300),
model VARCHAR (300),
model_year YEAR
);

INSERT INTO top_3_cars (make, model, model_year)
VALUES
('Toyota', 'Corolla', 2009),
('Mercedes-Benz', 'G-class', 2022),
('Jeep', 'Wrangler', 2019);


SELECT * FROM top_3_cars


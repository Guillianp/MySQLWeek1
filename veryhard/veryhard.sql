-- Very Hard: Copy the table from your Very Easy Challenge Write a query to add in three cars at once 
-- Write a query to add in prices and colors for each of these cars Write a query to put the Make and Model
-- together in one column Create a new query that adds an additional column to the results to show how many cars 
-- have the same Make.


CREATE TABLE top_3_cars2(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
make VARCHAR (300),
model VARCHAR (300),
model_year YEAR
);

INSERT INTO top_3_cars2 (make, model, model_year)
VALUES
('Toyota', 'Corolla', 2009),
('Mercedes-Benz', 'G-class', 2022),
('Jeep', 'Wrangler', 2019);


-- add in three cars at once
INSERT INTO top_3_cars2 (make, model, model_year)
VALUES 
("Tesla", "Model S", 2020), 
("Ford", "Mustang", 2015), 
("Dodge", "Charger", 2022);

SELECT * FROM top_3_cars2;
-- Write a query to add in prices and colors for each of these cars
ALTER TABLE top_3_cars2
ADD price INT,
ADD color VARCHAR(100);


UPDATE top_3_cars2 
SET price = 5000, 
color = "pink"
WHERE id = 1;

UPDATE top_3_cars2
SET price = 230000, 
color = "purple"
WHERE id = 2;

UPDATE top_3_cars2
SET price = 29500,
color = "nude"
WHERE id = 3;

UPDATE top_3_cars2
SET price = 30000, 
color = "lilac"
WHERE id = 4;

UPDATE top_3_cars2 
SET price = 20000, 
color = "gunmetal"
WHERE id = 5;

UPDATE top_3_cars2 
SET price = 33000, 
color = "black"
WHERE id = 6;

SELECT * FROM top_3_cars2;

-- Write a query to put the Make and Model together in one column
SELECT CONCAT(make, " ", model) AS make_and_model
FROM top_3_cars2 ;

-- Create a new query that adds an additional column to the results to show how many cars have the same Make
SELECT make AS Make, COUNT(make) AS Matches 
FROM top_3_cars2 
GROUP BY make;
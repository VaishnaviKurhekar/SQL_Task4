-- Task 4: Aggregate Functions and Grouping
-- Objective:Use aggregate functions and grouping to summarize data

-- Deliverables:SQL queries using SUM, COUNT, AVG, GROUP BY 

-- 1.Apply aggregate functions on numeric columns
-- 2.Use GROUP BY to categorize
-- 3.Filter groups using HAVING



Use ecommerce;
-- 1.Count the number of employees in each department from the employee table.
select  title as department, COUNT(*) as employee_count from employee group by title;


SELECT * FROM cars93;

-- Manufacturers with total horsepower above 400
SELECT Manufacturer, SUM(Horsepower) AS TotalHorsepower
FROM Cars93
GROUP BY Manufacturer
HAVING SUM(Horsepower) > 400;

-- Car types with average price above $25,000
SELECT Type, AVG(Price) AS AvgPrice
FROM Cars93
GROUP BY Type
HAVING AVG(Price) > 25000;


--   Show the average speed of car of each manufacturer from the cars93 table.
SELECT Manufacturer, AVG(RPM) AS Average_Speed 
FROM cars93 
GROUP BY Manufacturer;

--  What is the total number of cars by origin (USA vs non-USA)?
SELECT Origin, COUNT(*) AS TotalCars 
FROM Cars93 
GROUP BY Origin;

--  How many models does each manufacturer produce?

SELECT Manufacturer, COUNT(Model) AS TotalModels 
FROM Cars93 
GROUP BY Manufacturer;

-- - Which car types have more than 5 models?
SELECT Type, COUNT(Model) AS TotalModels
FROM Cars93
GROUP BY Type
HAVING COUNT(Model) > 5;

-- - Which manufacturers have an average horsepower above 150?
SELECT Manufacturer, AVG(Horsepower) AS AvgHorsepower
FROM Cars93
GROUP BY Manufacturer
HAVING AVG(Horsepower) > 150;

-- Which car type has the highest average engine size?
SELECT Type, AVG(EngineSize) AS AvgEngineSize
FROM Cars93
GROUP BY Type
ORDER BY AvgEngineSize DESC
LIMIT 1;


-- Manufacturers with more than 2 models
SELECT Manufacturer, COUNT(Model) AS ModelCount
FROM Cars93
GROUP BY Manufacturer
HAVING COUNT(Model) > 2;




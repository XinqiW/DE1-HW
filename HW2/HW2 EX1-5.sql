-- Exercise 1: What state figures in the 145th line of our database?
SELECT * FROM birdstrikes LIMIT 145;
SELECT * FROM birdstrikes LIMIT 144,1;
-- Tennessee

-- Exercise 2: What is flight_date of the latest birstrike in this database?
SELECT * FROM birdstrikes as b ORDER BY b.flight_date DESC;
-- 2000-04-18

-- Exercise 3: What was the cost of the 50th most expensive damage?
SELECT distinct cost from birdstrikes ORDER BY cost desc limit 49,1; -- 5345

-- Exercise 4: What state figures in the 2nd record, if you filter out all records which have 
-- no state and no bird_size specified?
SELECT * FROM birdstrikes WHERE state IS NOT NULL AND bird_size IS NOT NULL;
-- ''

-- Exercise 5: How many days elapsed between the current date and the flights happening in week 52, 
-- for incidents from Colorado? (Hint: use NOW, DATEDIFF, WEEKOFYEAR)
SELECT DATEDIFF(NOW(), flight_date) FROM birdstrikes WHERE WEEKOFYEAR(flight_date) = 52 AND state = 'Colorado';
-- 7580
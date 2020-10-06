-- Exercise 1: Do the same with speed. If speed is NULL or speed < 100 create a "LOW SPEED" category, 
-- otherwise, mark as "HIGH SPEED". Use IF instead of CASE!
SELECT aircraft, airline, speed, IF (speed < 100 OR speed IS NULL, 'LOW SPEED', 'HIGH SPEED') AS speed_category
FROM birdstrikes.birdstrikes
ORDER BY speed_category;
-- The results are in the seperate csv. file named Exercise 1

-- Exercise 2: How many distinct 'aircraft' we have in the database?
SELECT COUNT(DISTINCT(aircraft)) FROM birdstrikes.birdstrikes;
-- 3

-- Exercise 3: What was the lowest speed of aircrafts starting with 'H'?
SELECT MIN(speed) AS lowest_speed FROM birdstrikes.birdstrikes WHERE aircraft like 'H%';
-- 9

-- Exercise 4: Which phase_of_flight has the least of incidents?
SELECT COUNT(*), phase_of_flight FROM birdstrikes.birdstrikes GROUP BY phase_of_flight ORDER BY COUNT(*); 
-- Taxi

-- Exercise 5: What is the rounded highest average cost by phase_of_flight?
SELECT phase_of_flight, ROUND(AVG(cost)) AS highest_cost FROM birdstrikes.birdstrikes GROUP BY phase_of_flight ORDER BY highest_cost;
-- 54673

-- Exercise 6: What the highest AVG speed of the states with names less than 5 characters?
SELECT state, AVG(speed) AS avg_speed FROM birdstrikes.birdstrikes WHERE LENGTH(state) < 5 GROUP BY state;
-- Iowa with 2862.5
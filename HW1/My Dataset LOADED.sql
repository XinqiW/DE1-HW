-- Load dataset GDP
SHOW VARIABLES LIKE "local_infile"
CREATE SCHEMA GDP;
USE GDP;
DROP TABLE GDP
CREATE TABLE GDP
(Series_Name VARCHAR(255),
Series_Code VARCHAR(255),
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
y2010 DOUBLE,
y2011 DOUBLE,
y2012 DOUBLE,
y2013 DOUBLE,
y2014 DOUBLE,
y2015 DOUBLE,
y2016 DOUBLE, 
y2017 DOUBLE,
PRIMARY KEY (Country_Name));

USE GDP
​
DESCRIBE GDP
​
TRUNCATE GDP
​
LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/GDP 2010-2017/GDP 2010-2017.csv'
INTO TABLE GDP
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(Series_Name, Series_Code, Country_Name, Country_Code, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
y2010 = nullif(@v_y2010, ''),
y2011 = nullif(@v_y2011, ''),
y2012 = nullif(@v_y2012, ''),
y2013 = nullif(@v_y2013, ''),
y2014 = nullif(@v_y2014, ''),
y2015 = nullif(@v_y2015, ''),
y2016 = nullif(@v_y2016, ''),
y2017 = nullif(@v_y2017, '');

SELECT * FROM GDP.GDP

-- Load dataset Labourforce
SHOW VARIABLES LIKE "local_infile"
CREATE SCHEMA Labourforce;
USE Labourforce;
DROP TABLE Labourforce
CREATE TABLE Labourforce
(Series_Name VARCHAR(255),
Series_Code VARCHAR(255),
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
y2010 DOUBLE,
y2011 DOUBLE,
y2012 DOUBLE,
y2013 DOUBLE,
y2014 DOUBLE,
y2015 DOUBLE,
y2016 DOUBLE, 
y2017 DOUBLE,
PRIMARY KEY (Country_Name));

USE Labourforce
​
DESCRIBE Labourforce
​
TRUNCATE Labourforce
​
LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Labour Force Participation 2010-2017/Labour Force Participation.csv'
INTO TABLE Labourforce
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(Series_Name, Series_Code, Country_Name, Country_Code, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
y2010 = nullif(@v_y2010, ''),
y2011 = nullif(@v_y2011, ''),
y2012 = nullif(@v_y2012, ''),
y2013 = nullif(@v_y2013, ''),
y2014 = nullif(@v_y2014, ''),
y2015 = nullif(@v_y2015, ''),
y2016 = nullif(@v_y2016, ''),
y2017 = nullif(@v_y2017, '');

SELECT * FROM Labourforce.Labourforce


-- Load dataset PM2.5Pollution
SHOW VARIABLES LIKE "local_infile"
CREATE SCHEMA Pollution;
USE Pollution;
CREATE TABLE Pollution
(Series_Name VARCHAR(255),
Series_Code VARCHAR(255),
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
y2010 DOUBLE,
y2011 DOUBLE,
y2012 DOUBLE,
y2013 DOUBLE,
y2014 DOUBLE,
y2015 DOUBLE,
y2016 DOUBLE, 
y2017 DOUBLE,
PRIMARY KEY (Country_Name));

USE Pollution
​
DESCRIBE Pollution
​
TRUNCATE Pollution
​
LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/PM2.5 Air Pollution 2010-2017/Pollution.csv'
INTO TABLE Pollution
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(Series_Name, Series_Code, Country_Name, Country_Code, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
y2010 = nullif(@v_y2010, ''),
y2011 = nullif(@v_y2011, ''),
y2012 = nullif(@v_y2012, ''),
y2013 = nullif(@v_y2013, ''),
y2014 = nullif(@v_y2014, ''),
y2015 = nullif(@v_y2015, ''),
y2016 = nullif(@v_y2016, ''),
y2017 = nullif(@v_y2017, '');

SELECT * FROM Pollution.Pollution

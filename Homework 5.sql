-- Exercise 3: Create a stored procedure which returns category of a given row. Row number is IN parameter, 
-- while category is OUT parameter. Display the returned category.
-- CAT1 - amount > 100.000, CAT2 - amount > 10.000, CAT3 - amount <= 10.000

DROP PROCEDURE IF EXISTS returncategory;

DELIMITER $$

CREATE PROCEDURE returncategory(
IN rownumber INT,
OUT categoryout VARCHAR(20)
)
BEGIN 
DECLARE amountout DECIMAL DEFAULT 0;
SET rownumber = rownumber - 1;
SELECT amount
INTO amountout 
FROM payments
LIMIT rownumber, 1;

IF amountout > 100000 THEN
SET categoryout = "CAT1";

ELSEIF amountout > 10000 & amountout <= 100000 THEN
SET categoryout = "CAT2";

ELSEIF amountout <= 10000 THEN
SET categoryout = "CAT3";

   END IF;
END$$

DELIMITER ;

CALL returncategory(18, @categoryout);
SELECT @categoryout;
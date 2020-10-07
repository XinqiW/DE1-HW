-- INNER join orders,orderdetails,products and customers. Return back:
-- orderNumber
-- priceEach
-- quantityOrdered
-- productName
-- productLine
-- city
-- country
-- orderDate
SELECT orderNumber, priceEach, quantityOrdered, productName, productLine, city, country, orderDate
FROM orders t1
INNER JOIN orderdetails t2
USING (orderNumber)
INNER JOIN products t3
USING (productCode)
INNER JOIN customers t4
USING (customerNumber);
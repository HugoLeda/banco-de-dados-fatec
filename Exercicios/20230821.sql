SELECT * 
FROM `orders` 
WHERE `status` = 'Cancelled'

SELECT * 
FROM `orders` 
WHERE `status` = 'Cancelled' AND `shippedDate` <> 'NULL'

SELECT * 
FROM `orders` 
WHERE MONTH(orderDate) = 06 AND YEAR(orderDate) = 2004

SELECT * 
FROM `orders` 
WHERE (MONTH(orderDate) = 06 OR MONTH(orderDate) = 07) AND YEAR(orderDate) = 2004

SELECT * 
FROM `orders` 
ORDER BY `customerNumber` ASC

SELECT orderDate
FROM `orders` 
ORDER BY orderDate

SELECT DISTINCT(orderDate)
FROM `orders` 
ORDER BY orderDate

SELECT * 
FROM `customers` 
WHERE `country` IN ('USA', 'FRANCE')

SELECT * 
FROM `customers` 
WHERE `country` IN ('USA', 'FRANCE')
LIMIT 5

/*1*/
SELECT * 
FROM `customers` 
ORDER BY `creditLimit` DESC
LIMIT 10

/*2*/
SELECT * 
FROM `customers` 
WHERE `city` IN ('CAMBRIDGE', 'AUCKLAND', 'BRICKHAVEN')

/*3*/
SELECT * 
FROM `products` 
WHERE `productDescription` LIKE '%FORD%'

/*4*/
SELECT * 
FROM `orders` 
WHERE `status` = 'Cancelled' AND `status` = 'Cancelled'

/*5*/
SELECT * 
FROM `customers` 
WHERE `salesRepEmployeeNumber` = 1401 AND `creditLimit` > 100000 AND `country` = 'ITALY'
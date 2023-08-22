/*
SELECT * 
FROM `products` 
WHERE `quantityInStock` < 100
*/

/*
SELECT * 
FROM `products` 
WHERE `productScale` = "1:12"
*/

/*
SELECT * 
FROM `products` 
WHERE `productScale` = "1:12" AND `quantityInStock` < 100
*/

SELECT `productName`, `productVendor`
FROM `products` 
WHERE `productName` LIKE "%1969%"  OR `productDescription` LIKE "%1970%"

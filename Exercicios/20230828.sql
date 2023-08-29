SELECT * 
FROM `employees`
JOIN `offices`
ON employees.officeCode = offices.officeCode

SELECT * 
FROM `employees`
JOIN `offices` ON employees.officeCode = offices.officeCode
WHERE employees.jobTitle = 'Sales Rep'

SELECT * 
FROM `employees`
JOIN `offices` ON employees.officeCode = offices.officeCode
WHERE employees.jobTitle = 'Sales Rep'
AND offices.city = 'Paris'

SELECT employees.firstName, employees.lastName, offices.addressLine1
FROM `employees`
JOIN `offices` ON employees.officeCode = offices.officeCode

SELECT *
FROM products
JOIN productlines ON products.productLine = productlines.productLine

SELECT *
FROM payments
JOIN customers ON payments.customerNumber = customers.customerNumber

SELECT * 
FROM `employees` 
JOIN offices ON employees.officeCode = offices.officeCode
WHERE offices.country = 'Japan'

SELECT * FROM employees
INNER JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
INNER JOIN offices ON employees.officeCode = offices.officeCode
WHERE offices.territory = 'EMEA'

SELECT customers.contactFirstName, customers.contactLastName FROM customers
JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
WHERE employees.lastName = 'Hernandez'

SELECT CONCAT(customers.contactFirstName, customers.contactLastName) AS 'Name' FROM customers
JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
WHERE employees.lastName = 'Hernandez'
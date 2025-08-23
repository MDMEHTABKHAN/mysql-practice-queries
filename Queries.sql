

SELECT p.productName, pl.textDescription
FROM products p
JOIN productlines pl ON p.productLine = pl.productLine;



SELECT e.firstName AS Employee, m.firstName AS Manager
FROM employees e
LEFT JOIN employees m ON e.reportsTo = m.employeeNumber;


SELECT e.firstName, e.lastName, o.officeCode, o.city
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode;



SELECT pl.productLine, COUNT(p.productCode) AS total_products
FROM productlines pl
LEFT JOIN products p ON pl.productLine = p.productLine
GROUP BY pl.productLine;


SELECT firstName, lastName
FROM employees
WHERE reportsTo IS NULL;


SELECT SUM(quantityInStock) AS total_stock FROM products;

SELECT productLine, AVG(buyPrice) AS avg_price
FROM products
GROUP BY productLine;



SELECT productLine, MAX(MSRP) AS highest_price
FROM products
GROUP BY productLine;


SELECT officeCode, COUNT(employeeNumber) AS total_employees
FROM employees
GROUP BY officeCode;



SELECT productLine, COUNT(*) AS total_products
FROM products
GROUP BY productLine
HAVING COUNT(*) > 5;




SELECT * FROM employees
WHERE reportsTo IS NULL;




SELECT * FROM employees
WHERE reportsTo = (
    SELECT employeeNumber FROM employees WHERE firstName = 'Andrew'
);




SELECT productName, buyPrice
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice) FROM products);



SELECT productName, buyPrice
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice) FROM products);



SELECT productName, productScale, MSRP
FROM products
WHERE productLine = (
    SELECT productLine FROM productlines WHERE productLine = 'Classic Cars'
);


SELECT firstName, lastName
FROM employees
WHERE officeCode IN (
    SELECT officeCode FROM offices WHERE city = 'San Francisco'
);



SELECT firstName, lastName, jobTitle
FROM employees e
WHERE jobTitle IN (
    SELECT jobTitle FROM employees
    GROUP BY jobTitle
    HAVING COUNT(*) > 1
);



SELECT productName, MSRP
FROM products
WHERE MSRP = (SELECT MAX(MSRP) FROM products);



SELECT firstName, lastName
FROM employees
WHERE employeeNumber NOT IN (
    SELECT DISTINCT reportsTo FROM employees WHERE reportsTo IS NOT NULL
);




SELECT MAX(buyPrice) 
FROM products
WHERE buyPrice < (SELECT MAX(buyPrice) FROM products);


SELECT firstName, lastName, salary
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);



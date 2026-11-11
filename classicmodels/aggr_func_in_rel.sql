----Total quantity ordered and total price per productline

SELECT productlines.productLine, SUM(quantityOrdered) AS Total_quantity_ordered, SUM(quantityordered * CAST(priceEach AS DECIMAL(10, 2))) AS total_price FROM productlines
JOIN products ON products.productline = productlines.productline
JOIN orderdetails ON orderdetails.productcode = products.productcode
GROUP BY productlines.productline

----Total quantity ordered and total payment amount per customer

SELECT customers.customerName, sum(quantityOrdered) AS Total_Quantity_Ordered, sum(quantityOrdered * CAST(priceEach AS DECIMAL(10, 2))) AS Total_Payment_amount FROM products
JOIN orderdetails ON orderdetails.productcode = products.productcode
JOIN orders ON orderdetails.orderNumber = orders.orderNumber
JOIN customers ON orders.customerNumber = customers.customerNumber
GROUP BY customers.customerName
order by customers.customerName

---- Orders in each status per customer

SELECT customerName, status, count(status) FROM customers
JOIN orders ON orders.customernumber = customers.customernumber
GROUP BY customername, status
ORDER BY customername;

---- Number of employees per job title in each office

SELECT offices.officeCode, employees.jobTitle, COUNT(employees.jobTitle) AS number_of_employers FROM employees
JOIN offices ON employees.officeCode = offices.officeCode
GROUP BY offices.officeCode, employees.jobTitle
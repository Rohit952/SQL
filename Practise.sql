SELECT * FROM customers
SELECT customerName, phone,contactLastName FROM customers
SELECT customerName FROM customers
SELECT DISTINCT customerName FROM customers
SELECT COUNT(DISTINCT customerName) FROM customers
SELECT customerName  FROM customers WHERE customerNumber=103
SELECT customerName FROM customers WHERE customerName = 'La Rochelle Gifts' AND phone = '40.67.8555'
SELECT * FROM customers WHERE contactLastName = 'Lee' AND contactFirstName = 'Kwai'
SELECT contactlastName,contactFirstName FROM customers WHERE contactlastName = 'Lee'
SELECT * FROM customers WHERE contactLastName = 'Lee' OR contactFirstName = 'Kwai'
SELECT * FROM customers WHERE NOT contactLastName='Lee' AND contactLastName = 'King'
SELECT * FROM customers WHERE contactLastName = 'King'
SELECT * FROM customers ORDER BY customerNumber 
SELECT * FROM customers ORDER BY customerNumber DESC
SELECT * FROM customers ORDER BY customerNumber,creditLimit
INSERT INTO customers(contactFirstName,customerNumber,customerName,phone,contactLastName) VALUES ('dsdas',100,'ddds',54454,'cristiano')
SELECT customerName, contactLastName, phone FROM customers WHERE addressLine2='Level 3'
UPDATE customers SET customerName = 'Alfred Schmidt', phone= 5555 WHERE customerNumber = 114
DELETE FROM customers WHERE customerName='Alfred Schmidt'
SELECT * FROM customers LIMIT 45
SELECT * FROM customers WHERE customerName='Mini Wheels Co.' LIMIT 3
SELECT MAX(creditLimit) FROM customers
SELECT MAX(creditLimit) AS maximum_value FROM customers
SELECT COUNT(creditLimit) FROM customers
SELECT COUNT(customerName) FROM customers


SELECT * FROM customers WHERE customerName LIKE 'A%'
SELECT COUNT(*) FROM customers WHERE customerName LIKE 'A%'
SELECT * FROM customers WHERE customerName LIKE '%s'
SELECT * FROM customers WHERE customerName LIKE '%or%'
SELECT * FROM customers WHERE customerName LIKE '_r%'
SELECT * FROM customers WHERE customerName LIKE 'a__%'
SELECT * FROM customers WHERE customerName LIKE '_a_%'
SELECT * FROM customers WHERE customerName LIKE 'a%o'
SELECT * FROM customers WHERE customerName NOT LIKE 'a%'
SELECT * FROM customers WHERE contactFirstName LIKE 'P_t__'
SELECT * FROM customers WHERE customerName LIKE '[rbs]%'

SELECT creditLimit FROM customers ORDER BY creditLimit DESC
SELECT MAX(creditLimit) FROM customers WHERE creditLimit NOT IN ( SELECT MAX(creditLimit) FROM customers)
SELECT MAX(creditLimit) From customers WHERE creditLimit < ( SELECT Max(creditLimit) FROM customers)
SELECT DISTINCT(creditLimit) FROM customers ORDER BY creditLimit DESC limit 1,1
SELECT creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 1,1
SELECT creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 2,3

SELECT * FROM customers WHERE state IN ('NY', 'CA')
SELECT * FROM customers WHERE state NOT IN ('NY', 'CA')
SELECT state from customers WHERE state IN ('ny', 'CA')
SELECT * FROM customers WHERE state IN ('NY', 'CA')



SELECT creditLimit from customers WHERE creditLimit BETWEEN 21000 AND 75000
SELECT * FROM customers WHERE creditLimit BETWEEN 21000 AND 75000
SELECT * FROM customers WHERE creditLimit BETWEEN 21000 AND 75000 order by creditLimit desc
SELECT creditLimit from customers WHERE creditLimit not BETWEEN 21000 AND 75000
SELECT * FROM customers WHERE creditLimit not BETWEEN 21000 AND 75000
SELECT * FROM customers WHERE creditLimit not BETWEEN 21000 AND 75000 order by creditLimit desc
SELECT * from customers WHERE creditLimit BETWEEN 21000 AND 75000 AND country NOT IN ('USA')
SELECT * from customers WHERE creditLimit BETWEEN 21000 AND 75000 AND country NOT IN ('USA') order by country desc
SELECT creditLimit from customers WHERE creditLimit BETWEEN 21000 AND 75000 AND country NOT IN ('USA')
SELECT * FROM customers WHERE country BETWEEN 'France' AND 'USA' ORDER BY country
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

SELECT customerName, CONCAT(contactLastName,', ',contactFirstName) AS Address FROM customers
SELECT c.customerName, c.contactFirstName FROM customers AS c WHERE c.CustomerName="La Rochelle Gifts"

# Inner Join
SELECT * FROM customers  
SELECT * FROM offices
SELECT offices.city, offices.country FROM offices INNER JOIN customers ON offices.city=customers.city


# Group By
SELECT COUNT(customerNumber), country FROM customers GROUP BY country
SELECT COUNT(customerNumber), country FROM customers GROUP BY country ORDER BY COUNT(customerNumber) DESC

create database hello
use hello
drop database hello

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
drop table persons
truncate table persons
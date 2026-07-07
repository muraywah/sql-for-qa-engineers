-- ====================
-- SELECT
-- ====================

SELECT * 
FROM dbo.Customers

-------------------------------------------------------

SELECT CustomerName, 
Notes 
FROM dbo.Customers


-- ====================
-- WHERE
-- ====================

SELECT *
FROM dbo.Customers
WHERE State IN('WA', 'NY', 'UT')

---------------------------------------------------------

SELECT *
FROM dbo.Customers
WHERE CustomerName NOT LIKE 'A%' 'Tres Delicious' AND (Country = 'United States')


-- ====================
-- JOIN
-- ====================

SELECT OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o
INNER JOIN dbo.Customers c ON o.CustomerID = c.CustomerID

-----------------------------------------------------------


SELECT OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o RIGHT OUTER JOIN dbo.Customers c ON o.CustomerID = c.CustomerID

-- ====================
-- ORDER BY
-- ====================

SELECT OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o RIGHT OUTER JOIN dbo.Customers c ON o.CustomerID = c.CustomerID
ORDER BY OrderTotal DESC 


-- ====================
-- GROUP BY
-- ====================

SELECT SUM(OrderTotal)
FROM dbo.Orders
WHERE OrderDate > '9/10/2021'
GROUP BY CustomerID

------------------------------------------------------------------------THỨ TỰ THỰC THI TRONG SQL-------------------------------------------------------------------------
--SELECT DISTINCT 9 TOP 11, , 8
--FROM 1 
--FULL/ L/ R 4 OURTER JOIN 2 ON 3
--WHERE 5 
--GROUP BY 6
--HAVING 7 
--ORDER BY 10 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT p.ProductName,
    p.ProductID --2
FROM Products as p --1

SELECT p.ProductName, 
    p.ProductID -- 3
FROM Products as p -- 1
WHERE p.CategoryID = 1; -- 2 

SELECT p.CategoryID as "Mã loại sản phẩm", 
    COUNT(p.ProductID) as "Số lượng mã sản phẩm" --4
FROM Products as p -- 1
WHERE p.CategoryID in (1, 2, 3) -- 2
GROUP BY p.CategoryID -- 3


SELECT p.CategoryID as "Mã loại sản phẩm", 
    COUNT(p.ProductID) as "Số lượng mã sản phẩm" --4
FROM Products as p -- 1
WHERE p.CategoryID in (1, 2, 3, 4, 5, 6, 7) -- 2
GROUP BY p.CategoryID -- 3
HAVING COUNT(p.ProductID) >= 10
ORDER BY "Số lượng mã sản phẩm" asc

SELECT TOP 3 p.ProductID, od.Discount, o.ShipCountry -- 10/12/9 
FROM Products as p -- 1
INNER JOIN [Order Details] as od -- 4/2
ON p.ProductID = od.ProductID -- 3
INNER JOIN Orders as o -- 7/5
ON o.OrderID = od.OrderID -- 6
WHERE od.Discount = 0.25 and o.ShipCountry = 'Germany' -- 8
Order BY p.ProductID DESC --11
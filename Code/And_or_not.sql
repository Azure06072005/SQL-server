---------------------------------And, or, not---------------------------------
--SELECT column1, column2
--FROM table_name
--WHERE condition1 AND condition2 AND condition3
--Hi?n th? m?t b?n ghi n?u t?t c? các di?u ki?n du?c phân tách b?ng AND 
--d?u có giá tr? TRUE
--------------------------------------------------------------------------------
--WHERE condition1 OR condition2 OR condition3
--Hi?n th? m?t b?n ghi n?u có ít nh?t 1 di?u ki?n du?c phân tách b?ng OR có giá tr? 
--TRUE
--------------------------------------------------------------------------------
--WHERE NOT condition
--Hi?n th? m?t b?n ghi n?u di?u ki?n có giá tr? không dúng - FALSE
----------------------------------------------------------------------------------
--li?t kê t?t c? các s?n ph?m có s? lu?ng trong kho (UnitInStock) thu?c kho?ng 
--l?n hon 50 nh? hon 100 
SELECT *
FROM Products
WHERE UnitsInStock > 50 AND UnitsInStock < 100
--bé hon 50 ho?c l?n hon 100 
SELECT * 
FROM Products
WHERE UnitsInStock < 50 OR UnitsInStock > 100

--Li?t kê t?t c? don hàng du?c giao d?n Brazil, dã b? giao mu?n, bi?t r?ng ngày c?n ph?i giao hàng 
--là RequiredDate, ngày giao hàng th?c t? là ShippedDate
SELECT *
FROM Orders
WHERE ShipCountry = 'Brazil' AND ShippedDate > RequiredDate

--L?y ra t?t c? các s?n ph?m có giá du?i 100$ và th? lo?i khác 1
SELECT * 
FROM Products
WHERE NOT (CategoryID = 1 OR UnitPrice >= 100)
--------------------------------------------------------------------------------
--Li?t kê FREIGHT trong kho?ng [50;100]$
SELECT *
FROM Orders
WHERE Freight > 50 AND Freight < 100 
------------------------------------------------------------------------------------
--Thử Thách 
--Viết câu lệnh SQL tìm ra khách hàng không phải ở USA và 
--chỉ lấy 5 khác hàng đầu tiên, sắp xếp theo thứ tự [Lastname] A-Z và tạo ra cột full name
SELECT TOP 5 *,
(LastName + ' ' + FirstName) AS "Fullname"
FROM Employees
WHERE NOT Region = 'USA'
ORDER BY LastName

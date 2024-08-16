---------------------------------------------IN------------------------------------------
--SELECT column_name1, column_name2
--FROM table_name
--WHERE column_name IN (value1, value2,...)
--Có ý nghĩa tương tự như OR, cho phép kiểm tra nhiều giá trị cùng lúc
------------------------------------------------------------------------------------------
--Lọc ra tất cả các đơn hàng với điều kiện:
--a. Đơn hàng được giao đến Germany, Brazil, UK
SELECT *
FROM Orders
WHERE ShipCountry IN ('Germany', 'Brazil', 'UK')
ORDER BY ShipCountry ASC
--b. Đơn hàng không được giao đến Germany, Brazil, UK
SELECT *
FROM Orders
WHERE NOT ShipCountry IN ('Germany', 'Brazil', 'UK')
ORDER BY ShipCountry ASC
--Hoặc
SELECT *
FROM Orders
WHERE ShipCountry NOT IN ('Germany', 'Brazil', 'UK')
ORDER BY ShipCountry ASC

--Lấy sản phẩm có thể loại khác với 2, 3, 4
SELECT *
FROM Products
WHERE CategoryID NOT IN (2, 3, 4)
ORDER BY CategoryID ASC

--Liệt kê các nhân viên không phải từ nữ từ bảng Nhân viên 
SELECT * 
FROM Employees
WHERE TitleOfCourtesy NOT IN ('Mrs.', 'Ms.')
ORDER BY LastName ASC
--Liệt kê các nhân viên từ nữ từ bảng Nhân viên 
SELECT * 
FROM Employees
WHERE TitleOfCourtesy IN ('Mrs.', 'Ms.')
ORDER BY LastName ASC
-------------------------------------------------------------------------------------------
--Lấy ra những khách hàng đến từ những thành phố Berlin, London, Warszawa
SELECT *
FROM Customers
WHERE City IN ('Berlin', 'London', 'Warszawa')

--Câu hỏi 1: Từ bảng Territories lấy ra mô tả chứa thành phố New York
SELECT *
FROM Territories
WHERE TerritoryDescription IN ('New York')
--Câu hỏi 2: hãy liệt kê các đơn hàng giao đến các nước Ireland, France, usa.
SELECT *
FROM Orders
WHERE ShipCountry IN ('Ireland', 'France', 'USA')
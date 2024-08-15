------------------------đặt tên thay thế cho cột và bảng Alias------------------
--ALIAS CÁC CỘT
--SELECT column_name AS alias_name
--FROM table_name
--đặt tên thay thế cho các cột -> giúp cho việc đọc và hiểu câu lệnh SQL dễ dàng hơn
--lưu ý: đặt nên chúng ta dùng "" hoặc [] nếu tên có nhiều từ
--------------------------------------------------------------------------------
--lấy "CompanyName" -> "Công ty", "PostalCode" -> "Mã bưu điện"
SELECT CompanyName AS "Công ty",
PostalCode AS "Mã bưu điện",
City AS "Thành phố"
FROM Customers
--lấy "LastName" -> "Họ", "FirstName" -> "Tên" trong bảng Employees
SELECT LASTNAME AS Họ,
FirstName AS Tên
FROM Employees
--lấy 15 dòng đầu tiên tất cả các cột trong bảng Order và đặt tên thay thế là o
SELECT TOP 15 O.* 
FROM Orders AS O

--------------------------------------------------------------------------------
--ProductName => Tên sản phẩm
--SupplierID => Mã nhà cung cấp
--CategoryID => Mã thể loại
--Product => p, lấy 5 sản phẩm đầu tiên trong hàng
SELECT TOP 5 ProductName AS "Tên sản phẩm",
SupplierID AS "Mã nhà cung cấp",
CategoryID AS "Mã thể loại"
FROM Products AS p
--------------------------------------------------------------------------------
--BÀI TẬP
-- 1. lấy ra các cột và đặt tên thay thế 
-- OrderID -> mã đơn hàng
-- CustomerID -> mã khách hàng
-- OrderDate -> ngày đặt
-- đặt tên thay thế của bảng Orders là o
-- lấy ra 20% trên tổng số dòng.
SELECT top 20 percent 
OrderID AS "Mã đơn hàng",
CustomerID AS "Mã khách hàng",
OrderDate AS "Ngày đặt"
FROM Orders AS o
-- 2. lấy ra các cột và đặt tên thay thế 
-- OrderID -> mã đơn hàng
-- UnitPrice -> giá
-- Quantity -> số lượng.
-- đặt tên thay thế của bảng Orders Details là OD
-- lấy ra 20 dòng đầu tiên
SELECT top 20 
OrderID AS "Mã đơn hàng",
UnitPrice AS Giá,
Quantity AS "Số lượng"
FROM [Order Details] AS OD
-- Viết câu lệnh sql lấy ra 5 họ khác nhau đầu tiên của nhân viên 
-- với alias  LastName là "họ"
SELECT DISTINCT TOP 5 
LastName AS Họ
FROM Employees
-- Viết câu lệnh lấy ra 5 dòng đầu tiên của địa chỉ khách hàng 
-- với alias address là "địa chỉ"
SELECT TOP 5
Address AS "Địa chỉ"
FROM Customers
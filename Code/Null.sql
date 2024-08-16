-------------------------------------IS NULL, IS NOT NULL----------------------------------
--SELECT column_name(s) 
--FROM table_name
--WHERE column_name IS NULL
--giá trị column bị NULL
-------------------------------------------------------------------------------------------
--Lấy ra tất cả đơn hàng chưa được giao 
SELECT *
FROM Orders
WHERE ShippedDate IS NULL

SELECT COUNT(*)
FROM Orders
WHERE ShippedDate IS NULL

--Lấy danh sách các khách hàng có Region không bị NULL
SELECT *
FROM Customers
WHERE Region IS NOT NULL

--Lấy danh sách các khách hàng không có CompanyName
SELECT *
FROM Customers
WHERE CompanyName IS NULL

------------------------------------------------------------------------------------------
--Lấy ra tất cả các đơn hàng chưa được giao và có khu vực giao hàng (ShipRegion) không 
--bị NULL
SELECT *
FROM Orders
WHERE ShipRegion IS NOT NULL

--Câu 1: Lấy ra tất cả các loại mà tên loại từ bảng (Categorys) 
--được để không được trống, nghĩa là tên loại phải không được rỗng.
SELECT *
FROM Categories
WHERE CategoryID IS NOT NULL
--Câu 2: Lấy ra tất cả những nhân viên mà không có phần báo cáo (ReportsTo) 
--từ bảng (Employees), nghĩa là ở phần báo cáo của từng nhân viên 
SELECT *
FROM Employees
WHERE ReportsTo IS NULL
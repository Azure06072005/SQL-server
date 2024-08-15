------------------------------FIND MIN, MAX VALUE------------------------------
--Tìm giá trị nhỏ nhất
--SELECT MIN(column_name)
--FROM table_name
--Tìm giá trị nhỏ nhất của một cột, có thể kết hợp với alias để thay đổi tên cột
--------------------------------------------------------------------------------
--Tìm giá thấp nhất của các sản phẩm trong Bảng Product
SELECT MIN(UnitPrice) AS MinPrice
FROM Products
--Tìm ngày đặt hàng gần nhất từ bảng Orders
SELECT MIN(OrderDate) AS "Ngày đặt hàng gần nhất"
FROM Orders
--Tìm sản phẩm (lấy mã và tên sản phẩm) có số lượng hàng tốt kho (UnitInStock) lớn nhất
SELECT MAX(UnitsInStock)
FROM Products
--------------------------------------------------------------------------------
--Tìm tuổi đời của nhân viên lớn nhất trong công ty
SELECT MIN(BirthDate)
FROM Employees
--Bài 1: Tìm đơn hàng đã đặt ít nhất trong cột UnitsOnOrder bảng Products
--Bài 2: Tìm ngày ship hàng (ShippedDate) gần nhất trong bảng Orders

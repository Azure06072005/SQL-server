-------------------------truy vấn select top, giới hạn dòng trả về----------------
--câu lênh SELECT TOP
--SELECT TOP number| percent column_name(s)
--FROM table_name
--WHERE condition;
--giới hạn số lượng dòng (hoặc %) được trả về khi gọi hàm SELECT

----------------------------------------------------------------------------------
--lấy ra 5 dòng đầu tiên trong bảng CUSTOMERS
SELECT TOP 5 *
FROM Customers;
--lấy ra 30% nhân viên của công ty hiện tại
SELECT TOP 30 PERCENT *
FROM Employees
--lấy dữ liệu các đơn hàng với mã khác hàng KHÔNG ĐƯỢC TRÙNG LẬP và lấy 5 DỮ LIỆU ĐẦU TIÊN
SELECT DISTINCT TOP 5 CustomerID
FROM Orders
--lấy dữ liệu các mã thể loại khác nhau và lấy 3 dữ liệu
SELECT DISTINCT TOP 3 CategoryID
FROM Categories
----------------------------------------------------------------------------------
--BÀI TẬP
--Câu 1: Truy vấn 20% không trùng lặp ShipName và ShipAddress trong bảng Orders.
SELECT DISTINCT TOP 20 PERCENT ShipName, ShipAddress 
FROM Orders
--Câu 2: Truy vấn 120 dòng đầu trong bảng Orders.
SELECT DISTINCT TOP 120 *
FROM Orders


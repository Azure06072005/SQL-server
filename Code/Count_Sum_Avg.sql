----------------------------------Count, Sum, Avg--------------------------------
--Đếm số lượng - COUNT()
--SELECT COUNT(column_name)
--FROM table_name
--Đếm số dữ liệu (khác NULL) trong một cột.
--Sử dụng COUNT(*) khi muốn đếm số lượng bản ghi

--Tính tổng - SUM()
--SELECT SUM(column_name)
--FROM table_name
--Tính tổng giá trị của một cột, nếu bất kì giá trị trong cột là NULL,
--kết quả giá trị hàm SUM sẽ là NULL

--Tính giá trị trung bình - AVG()
--SELECT AVG(column_name)
--FROM table_name;
--Tính giá trị trung bình cho một cột
--Nếu giá trị trong cột là NULL -> giá trị AVG là NULL
--Nếu một vài giá trị trong cột là NULL -> AVG sẽ bỏ qua các giá trị NULL
------------------------------------------------------------------------------------
--Đếm số lượng khách hàng trong bảng Customers
SELECT COUNT(*) AS "Số lượng khách hàng"
FROM Customers
--Lưu ý: có thể sử dụng table tổng hợp trong bảng nhưng nó có thể bỏ qua các giá trị
--NULL dễ sai sót

--Tính tổng số tiền vận chuyển (Frieght) của tất cả các đơn đặt hàng
SELECT SUM(Freight) AS "Tổng số tiền vận chuyển"
FROM Orders

--Tính trung bình số lượng đặt hàng (Quantity) của sp trong bảng Orders Detail
SELECT AVG(Quantity) AS "Trung bình số lượng đặt hàng"
FROM [Order Details]

--Đếm số lượng, tổng số lượng hàng tồn kho và trung bình giá trong bảng Product
SELECT 
COUNT(*) AS "Tổng số lượng",
SUM(UnitsInStock) AS "Số lượng hàng trong kho",
AVG(UnitPrice) AS "Trung bình giá"
FROM Products AS "Sản phẩm"	

--Đếm số lượng đơn hàng trong bảng Orders bằng 2 cách
--Cách 1: Dùng *
SELECT COUNT(*) AS "Số lượng đơn hàng"
FROM Orders
--Cách 2: Dùng mã đơn hàng
SELECT COUNT(OrderID) AS "Số lượng đơn hàng"
FROM Orders

--Từ bảng Orders Detail, tính AVG cho UnitPrice, SUM cho Quantity
SELECT AVG(UnitPrice) AS "Trung bình giá",
SUM(Quantity) AS "Tổng số lượng"
FROM [Order Details] AS "Chi tiết đơn hàng"
------------------------------------------------------------------------------------
--Ví dụ 1: Đếm số lượng nhà cung cấp trong bảng "Supliers" 
SELECT COUNT(*) AS "Số lượng nhà cung cấp"
FROM Suppliers
--Ví dụ 2: Tính trung bình giá trị "Reoderlevel" trong bảng "Products"  
SELECT AVG(ReorderLevel) AS "Trung bình"
FROM Products
--Ví dụ 3: Tính tổng của  "UnitsOnOder" trong bảng "Products"  
SELECT SUM(UnitsOnOrder) AS "Tổng số hàng được gửi đi"
FROM Products

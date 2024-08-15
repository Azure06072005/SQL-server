--CÂU LỆNH SELECT
--SELECT COLUMN1, COLUMN2...
--FROM TABLE_NAME;
--CÂU LỆNH SELECT ĐƯỢC SỬ DỤNG ĐỂ CHỌN DỮ LIỆU TỪ CƠ SỞ DỮ LIỆU
--DỮ LIỆU TRẢ VỀ ĐƯỢC LƯU TRỮ TRONG MỘT BẢNG KẾT QUẢ, ĐƯỢC GỌI LÀ TẬP HỢP KẾT QUẢ
--CÁC CỘT 1, CỘT 2 LÀ TÊN TRƯỜNG CỦA BẢNG MÀ BẠN MUÔN CHỌN DỮ LIỆU

--VIẾT CÂU LỆNH SQL LẤY RA TÊN CỦA TẤT CẢ CÁC SẢN PHẨM
SELECT [ProductName]
FROM [dbo].[Products];
----------------------------------------------------------------------------
SELECT [CompanyName]
FROM [dbo].[Customers];
----------------------------------------------------------------------------
SELECT [RegionID]
FROM [dbo].[Region];
----------------------------------------------------------------------------
--VIẾT CÂU LỆNH LẤY RA TÊN SẢN PHẨM, GIÁ BÁN, SỐ LƯỢNG SẢN PHẨM TRÊN ĐƠN VỊ
SELECT [ProductName],[UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products]
----------------------------------------------------------------------------
--VIẾT CÂU LỆNH LẤY RA TÊN CÔNG TY KHÁCH HÀNG VÀ QUỐC GIA CỦA CÁC KHÁCH HÀNG ĐÓ
SELECT [CompanyName], [Country]
FROM [dbo].[Customers]
----------------------------------------------------------------------------
--VIẾT CÂU LỆNH LẤY RA TÊN VÀ SỐ ĐIỆN THOẠI CỦA TẤT CẢ NHÀ CUNG CẤP HÀNG 
SELECT CompanyName, Fax
FROM dbo.Suppliers
----------------------------------------------------------------------------
--viết câu lệnh lấy tất cả dữ liệu từ bảng product và bảng order
--lấy tất cả dữ liệu từ Products
SELECT * FROM dbo.Products
--lấy tất cả dữ liệu từ Orders
SELECT * FROM dbo.Orders
--lấy tất cả dữ liệu từ Products và Orders trong cùng một câu lệnh
SELECT *
FROM Products p

SELECT *
FROM Customers;

----------------------------------------------------------------------------
--LẤY TẤT CẢ DỮ LIỆU TỪ NHÀ CUNG CẤP - SUPPLIERS
SELECT * 
FROM Suppliers
--lấy tất cả dữ liệu từ Shippers và Employees
SELECT * FROM Shippers;
SELECT * FROM Employees;
----------------------------------------------------------------------------
--CÂU LỆNH SELECT DISTINCT 
--SELECT DISTINCT COLUMN1, COLUMN2....
--FROM TABLE_NAME
--LẤY CÁC DỮ LIỆU KHÔNG TRÙNG LẬP
--lấy ra tên các quốc gia (country) khác nhau từ bảng khách hàng
SELECT DISTINCT Country
FROM Customers
----------------------------------------------------------------------------
--lấy Postal code khác nhau từ Suppliers
SELECT DISTINCT PostalCode 
FROM Suppliers
--lấy ra các dữ liệu khác nhau về họ của nhân viên (Last name) và cách gọi danh hiệu lịch sự 
--(TitleOfCourtesy)
SELECT DISTINCT LastName, TitleOfCourtesy 
FROM Employees

SELECT DISTINCT TitleOfCourtesy 
FROM Employees

----------------------------------------------------------------------------
--lấy ra shipVia khác nhau của các đơn hàng - Orders
SELECT DISTINCT ShipVia 
FROM Orders
----------------------------------------------------------------------------
--BÀI TẬP
--TT1: Viết câu lệnh SQL lấy ra tên công ty và quốc gia khác nhau từ bảng Customers
SELECT DISTINCT CompanyName, Country
FROM Customers
--TT2: Viết câu lệnh SQL lấy ra id (ShipperID) khác nhau từ bảng Shippers
SELECT DISTINCT ShipperID 
FROM Shippers
--TT3: Lấy dữ liệu khác nhau của ProductID trong bảng Order Details
SELECT DISTINCT ProductID
FROM [Order Details]
--TT4: Lấy dữ liệu khác nhau của CustomerID trong bảng Orders
SELECT DISTINCT CustomerID
FROM Orders


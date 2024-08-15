-----------------------------------ORDER BY-----------------------------------
--SELECT column1, column2....
--FROM table_name
--ORDER BY column1, column2,.... ASC|DESC
--ASC(ascending): tăng dần
--DESC(descending): giảm dần
-------------------------------------------------------------------------------
--liệt kê tất cả các nhà cung cấp theo thứ tự tên đơn vị (Company Name) từ A-Z
SELECT *
FROM Suppliers
ORDER BY CompanyName 
--Lưu ý: nếu không viết ASC hay DESC thì ORDER BY mặc định là ASC

--Liệt kê các sản phẩm có thứ tự giá giảm dần
SELECT *
FROM Products
ORDER BY UnitPrice DESC

--Liệt kê tất cả họ và tên đệm của nhân viên từ A-Z mà không dùng ASC|DESC
SELECT * 
FROM Employees
ORDER BY LastName, FirstName
--Có sử dụng ASC|DESC
SELECT * 
FROM Employees
ORDER BY LastName ASC, FirstName ASC
--Lưu ý, sau mỗi column thì phải xác đinh chiều của nó

--lấy ra MỘT SẢN PHẨM có số lượng bán CAO NHẤT từ bảng Order Details
--Không sử dụng max
SELECT TOP 1 *
FROM [Order Details]
ORDER BY Quantity DESC

--Liệt kê danh sách cách đơn hàng(OrderID) trong bảng Orders theo thứ tự 
--giảm dần của ngày đặt hàng (OrderDate)
SELECT OrderID AS "Mã đơn hàng"
FROM Orders AS "Đơn hàng"
ORDER BY OrderDate DESC 

--liệt kê tên, đơn giá, số lượng tồn kho (UnitInStock) của tất cả các sản phẩm
--trong bảng Products, theo thứ tự giảm dần của UnitInStock
-------------------------------------------------------------------------------
--Thử thách 01: Viết câu lệnh SQL lấy ra cột "Country" 
--và đặt tên thay thế là "Quốc gia" từ bảng "Suppliers". 
--Và tên Quốc gia được sắp xếp theo thứ tự tăng dần từ A - Z
SELECT Country AS "Quốc gia"
FROM Suppliers
ORDER BY Country
--Thử thách 02: Viết câu lệnh SQL lấy ra số tiền vận chuyển (Freight) khác nhau 
--và chỉ lấy ra 2 dòng đầu tiên theo thứ tự giảm dần của số tiền vận chuyển (Freight) từ bảng "Orders"
SELECT DISTINCT TOP 2 Freight
FROM Orders
ORDER BY Freight DESC
--Thử thách 03: Viết câu lệnh SQL lấy ra 3 nhân có viên có tên (FirstName)
--, ngày sinh (BirthDate) và ngày tuyển dụng (HireDate) 
--khác nhau dựa theo tên (FirstName) từ A - Z từ bảng "Employees"
SELECT DISTINCT TOP 3 
FirstName AS "Tên",
BirthDate AS "Ngày sinh",
HireDate AS "Ngày tuyển dụng"
FROM Employees
ORDER BY FirstName
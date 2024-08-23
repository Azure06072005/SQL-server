--Sử dụng INNER JOIN
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;


--Sử dụng INNER JOIN
--Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Số lượng sản phẩm
SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;

--Sử dụng INNET JOIN, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID;

--Sử dụng INNER JOIN, LEFT JOIN
--Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;

SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
LEFT JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM [dbo].[Categories] c
LEFT JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;


--Sử dụng RIGHT JOIN, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID;

SELECT o.OrderID, c.CompanyName
FROM [dbo].[Orders] o
RIGHT JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID;

SELECT  c.CompanyName, COUNT(o.OrderID)
FROM [dbo].[Orders] o
RIGHT JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;

SELECT  c.CompanyName, COUNT(o.OrderID)
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;

--Sử dụng FULL OUTER JOIN
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
FULL JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;
------------------------------------------------------------------------------------------
--Bài tập 1: Inner Join
--Liệt kê tên nhân viên và tên khách hàng của các đơn hàng trong bảng "Orders"
select (e.LastName + ' ' + e.FirstName) as Fullname,
	c.ContactName as CustomerName
from Employees as e	
inner join Orders as o
on e.EmployeeID = o.EmployeeID
inner join Customers as c 
on c.CustomerID = o.CustomerID

--Bài tập 2: Left Join
--liệt kê tên nhà cung cấp và tên sản phẩm của các sản phẩm trong bảng Products, bao gồm 
--các sản phẩm không có nhà cung cấp 
select s.CompanyName as "SupplierName",
	p.ProductName 
from Products as p
left join Suppliers as s
on p.SupplierID = s.SupplierID

--Bài tập 3: Right join 
--Hãy liệt kê tên khách hàng và tên đơn hàng của các đơn hàng trong bảng "Orders", 
--bao gồm cả khách hàng không có đơn hàng
select c.ContactName as "Tên khách hàng",
	o.OrderID as "Tên đơn hàng"
from Orders as o
right join Customers as c
on o.CustomerID = c.CustomerID

--Câu hỏi 4: Full Join
--liệt kê tên danh mục và tên nhà cung cấp của các sản phẩm trong bảng "Products", bao gồm cả
--các danh mục và nhà cung cấp không có sản phẩm
select c.CategoryName as "Tên danh mục",
	s.CompanyName as "Tên nhà cung cấp"
from Products as p 
full join Suppliers as s
on p.SupplierID = s.SupplierID
full join Categories as c
on c.CategoryID = p.CategoryID
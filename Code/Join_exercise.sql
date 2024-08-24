--------------------------------------Join exercises-------------------------------------
--Bài tập 1: inner join
--Liệt kê tên sản phẩm và tên nhà cung cấp của các sản phẩm đã được đặt hàng trong bảng
--"Order Details". 
select distinct od.ProductID as "Tên sản phẩm",
	p.ProductName, s.CompanyName
from [Order Details] as od
inner join Products as p
on p.ProductID = od.ProductID
inner join Suppliers as s
on s.SupplierID = p.SupplierID

--Bài tập 2: left join
--liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng trong bảng Orders.
--Bao gồm cả các đơn hàng không có nhân viên phụ trách
select c.ContactName as "Tên khách hàng",
	   (e.LastName + ' ' + e.FirstName) as "Tên nhân viên"
from Orders as o
left join Customers as c
on o.CustomerID = c.CustomerID
left join Employees as e
on e.EmployeeID = o.EmployeeID

--Bài tập 3: Right join 
--Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng trong bảng Orders
--Bao gồm cả khách hàng không có đơn hàng, Sử dụng Right Join để kết hợp bảng Orders và 
--bảng Customers
select c.ContactName as "Tên khách hàng",
	   (e.LastName + ' ' + e.FirstName) as "Tên khách hàng"
from Orders as o
right join Customers as c
on o.CustomerID = c.CustomerID
right join Employees as e
on e.EmployeeID = o.EmployeeID

--Bài tập 4: Full join
--liệt kê tên danh mục và nhà cung cấp của các sản phẩm trong bảng Products. Bao gồm nhà 
--cung cấp không có sản phẩm.
select p.ProductName as "Tên danh mục",
	   s.CompanyName as "Nhà cung cấp"
from Products as p
full join Suppliers as s
on s.SupplierID = p.SupplierID
full join Categories as c
on c.CategoryID = p.CategoryID
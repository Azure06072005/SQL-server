----------------------------------------Data Query-----------------------------------------
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây
--Mã thể loại, tên thể loại, mã sản phẩm, tên sản phẩm 
select c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
from Products as p, Categories as c
where  c.CategoryID = p.CategoryID

--Từ bảng Employees và Orders, hãy in ra các thông tin sau đây: 
--Mã nhân viên 
--Tên nhân viên 
--Số lượng đơn hàng mà nhân viên đã bán được
select o.EmployeeID, 
	e.[LastName],
	e.FirstName,
count(OrderID) as TotalOrders
from Orders as o, Employees as e
where e.EmployeeID = o.EmployeeID
group by o.EmployeeID, e.LastName, e.FirstName

--Từ bảng Customers và Orders, hãy in ra các thông tin sau đây 
--Mã số khách hàng, tên công ty, tên liên hệ, số lượng đơn hàng đã mua	
--với điều kiện quốc gia của khách hàng là UK
select c.CustomerID as "Mã số khách hàng", 
	c.CompanyName as "Tên công ty",
	c.ContactName as "Tên liên hệ",
	count(o.OrderID) as "Số lượng đơn hàng"
from Customers as c, Orders as o
where c.Country = 'UK' and c.CustomerID = o.CustomerID
group by c.CustomerID, c.CompanyName, c.ContactName

--Từ bảng Orders và Shippers, hãy in ra các thông tin sau đây: 
--Mã nhà vận chuyển, tên công ty vận chuyển, Tổng số tiền vận chuyển (Sum Freight)
--in ra màn hình theo thứ tự sắp xếp tổng số tiền vận chuyển giảm dần
select s.ShipperID as "Mã nhà vận chuyển",
		s.CompanyName as "Tên công ty vận chuyển",
		sum(o.Freight) as "Tổng số tiền vận chuyển"
from Orders as o, Shippers as s
where s.ShipperID = o.ShipVia
group by s.ShipperID, s.CompanyName
order by sum(o.Freight) desc

--Từ bảng Products và Suppliers, hãy in ra các thông tin sau đây:
--Mã nhà cung cấp, tên công ty, Tổng số sản phẩm khác nhau đã cung cấp 
--và chỉ in ra 1 nhà cung cấp có số lượng sản phẩm khác nhau nhiều nhất
select top 1
	s.SupplierID as "Mã nhà cung cấp",
	s.CompanyName as "Tên công ty",
	count(p.ProductID) as "Sản phẩm"
from Products as p, Suppliers as s
where p.SupplierID = s.SupplierID	
group by s.SupplierID, s.CompanyName
order by count(p.ProductID) desc

--Từ bảng Orders và Order Details hãy in các thông tin sau đây
--Mã đơn hàng 
--Tổng số tiền sản phẩm của đơn hàng 
select o.OrderID as "Mã đơn hàng",
		sum(od.UnitPrice * od.Quantity) as "Tổng số tiền"
from Orders as o, [Order Details] as od
where o.OrderID = od.OrderID
group by o.OrderID

--Từ 3 bảng trong hình hãy in ra thông tin sau đây:
--Mã đơn hàng, tên nhân viên, tổng số tiền sản phẩm của đơn hàng
select  o.OrderID as "Mã đơn hàng",
		e.LastName as "Tên",
		e.FirstName as "Họ",
		sum(od.UnitPrice * od.Quantity) as "Tổng số tiền" 
from [Order Details] as od, Orders as o, Employees as e
where o.OrderID = od.OrderID and o.EmployeeID = e.EmployeeID
group by o.OrderID, e.LastName, e.FirstName
-------------------------------------------------------------------------------------------
--Từ 3 bảng trong hình hãy in ra các thông tin sau đây:
--Mã đơn hàng, tên khách hàng, tên công ty vận chuyển
--Chỉ in ra các đơn hàng được giao đến 'UK' trong năm 1997
select  o.OrderID as "Mã đơn hàng",
		c.CompanyName as "Tên khách hàng",
		s.CompanyName as "Tên công ty vận chuyển"
from Orders as o, Customers as c, Shippers as s
where s.ShipperID = o.ShipVia 
	and o.CustomerID = c.CustomerID 
	and o.ShipCountry = 'UK' 
	and year(o.ShippedDate) = 1997
group by o.OrderID, c.CompanyName, s.CompanyName

--thử thách 1: từ bảng products and orders details, hãy in ra các thông tin sau đây:
--mã đơn hàng
--mã sản phẩm
--tên sản phẩm
--tổng tiền của mỗi đơn hàng
select od.OrderID as "Mã đơn hàng",
	   p.ProductID as "Mã sản phẩm",
	   p.ProductName as "Tên sản phẩm",
	   sum(od.OrderID) as "Tổng tiền mỗi đơn hàng"
from Products as p, [Order Details] as od
where p.ProductID = od.ProductID
group by od.OrderID, p.ProductID, p.ProductName
order by p.ProductName asc


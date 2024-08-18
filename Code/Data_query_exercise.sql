--------------------------------------Data Query exercise-----------------------------------
--Từ bảng Products và Categories, hãy tìm các sản phẩm thuộc danh mục 'Seafood' (Đồ hải sản)
--in ra các thông tin sau đây:
--Mã thể loại, tên thể loại, mã sản phẩm, tên sản phẩm
select c.CategoryID as "Mã thể loại",
	   c.CategoryName as "Tên thể loại",
	   p.ProductID as "Mã sản phẩm",
	   p.ProductName as "Tên sản phẩm"
from Products as p, Categories as c
where c.CategoryID = p.CategoryID 
	  and c.CategoryName = 'Seafood'
group by c.CategoryID, c.CategoryName, p.ProductID, p.ProductName

--Từ bảng Products và Suppliers, tìm các sản phẩm được cung cấp từ nước 'Germany'
--Mã nhà cung cấp, Quốc gia, Mã sản phẩm, Tên sản phẩm
select s.SupplierID as "Mã nhà cung cấp",
	   s.Country as "Quốc gia",
	   p.ProductID as "Mã sản phẩm",
	   p.ProductName as "Tên sản phẩm"
from Products as p, Suppliers as s
where p.SupplierID = s.SupplierID
	  and s.Country = 'Germany'
group by s.SupplierID, s.Country, p.ProductID, p.ProductName

--từ bảng Customers, Orders, Shippers hãy in ra 
--mã đơn hàng, tên khách hàng, tên công ty vận chuyển và chỉ in ra các đơn hàng của các khách 
--hàng đến từ thành phố 'London'
select o.OrderID as "Mã đơn hàng",
	c.ContactName as "Tên khách hàng",
	s.CompanyName as "Tên công ty vận chuyển"
from Customers as c, Orders as o, Shippers as s
where c.CustomerID = o.CustomerID
	and o.ShipVia = s.ShipperID
	and o.ShipCity = 'London'
group by o.OrderID, c.ContactName, s.CompanyName 

--từ bảng Customers, Orders, Shippers hãy in ra các thông tin sau:
--Mã đơn hàng,	tên khách hàng, tên công ty vận chuyển, ngày yêu cầu chuyển hàng, 
--ngày giao hàng
--Chỉ in ra các đơn hàng giao muộn hơn quy định
select o.OrderID as "Mã đơn hàng",
	   c.ContactName as "Tên khách hàng",
	   s.CompanyName as "Công ty vận chuyển",
	   o.RequiredDate as "Ngày yêu cầu",
	   o.ShippedDate as "Ngày giao hàng"
from Customers as c, Orders as o, Shippers as s
where o.CustomerID = c.CustomerID
	  and o.ShipVia = s.ShipperID
	  and ShippedDate > RequiredDate
group by o.OrderID, c.ContactName, s.CompanyName, o.RequiredDate, o.ShippedDate

--give these for which customers don't come from the United States
--Select only this countries which is over than 100 orders
--display ShipCountry and Number of orders
select o.ShipCountry,
 count(o.OrderID)
from Customers as c, Orders as o
where not c.Country = 'USA'
	and o.CustomerID = c.CustomerID
group by o.ShipCountry
having count(o.OrderID) > 100

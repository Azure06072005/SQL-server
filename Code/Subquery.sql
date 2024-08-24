--------------------------------------Sub Query/Nest Query---------------------------------
--Subquery (câu truy vấn con): là một truy vấn select được viết bên trong một truy vấn select,
--update, insert, hoặc delete khác 
--Subquery hoạt động như một bảng ảo tạm thời, được sử dụng để trích xuất thông tin từ các bảng
--hoặc các tập dữ liệu khác trong cùng một câu truy vấn 
--------------------------------------------------------------------------------------------
--liệt kê toàn bộ sản phẩm
select ProductID, ProductName, UnitPrice
from Products

--tìm giá trung bình
select avg(UnitPrice) 
from Products

--lọc những sản phẩm có giá > trung bình
select ProductID, ProductName, UnitPrice
from Products
where UnitPrice > (select avg(UnitPrice) from Products)

--lọc ra nhưng khách hàng có số đơn hàng lớn hơn 10
select c.CustomerID, c.CompanyName, count(o.OrderID) as TotalOrders
from Customers as c
left join Orders as o
on c.CustomerID = o.CustomerID
group by c.CustomerID, c.CompanyName
having count(o.OrderID) > 10

--subquery
select * 
from Customers as c
where c.CustomerID in (
		select o.CustomerID
		from Orders as o
		group by o.CustomerID
		having count(o.OrderID) > 10
);

--tính tổng tiền cho từng đơn hàng
select o.*, (
	select sum(od.Quantity * od.UnitPrice)
	from [Order Details] as od
	where o.OrderID = od.OrderID
	) as Total
from Orders as o

--Lọc ra tên sản phẩm và tổng số đơn hàng của sản phẩm
select p.ProductName as "Tên sản phẩm",
	   p.ProductID,(
	select count(*)
	from [Order Details] as od
	where od.ProductID = p.ProductID
	) as "Tổng số đơn hàng"
from Products as p	
------------------------------------------------------------------------------------------

--hãy in ra mã đơn hàng, và số lượng sản phẩm của đơn hàng đó
select o.OrderID as "Mã đơn hàng",(
	select count(od.Quantity)
	from [Order Details] as od
	where od.OrderID = o.OrderID
	)
from Orders as o
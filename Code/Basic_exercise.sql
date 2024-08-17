-------------------------------------------Exercise--------------------------------------
--Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng, sắp xếp theo thứ tự tổng số 
--đơn hàng giảm dần 
select CustomerID as "Khách hàng",
	count(OrderID) as "Đơn hàng"
from Orders
group by CustomerID
having count(OrderID) > 20
order by count(OrderID) desc

--Lọc ra các nhân viên (EmployeeID) có tổng số đơn hàng lớn hơn hoặc bằng 100, sắp xếp theo 
--tổng số đơn hàng giảm dần
select EmployeeID as "Nhân viên",
	count(OrderID) as "Đơn hàng" 
from Orders
group by EmployeeID
having count(OrderID) >= 100
order by count(OrderID) desc

--Hãy cho biết những thể loại nào (CategoryID) có số sản phẩm khác nhau lớn hơn 11
select distinct CategoryID, COUNT(ProductID) as "Sản phẩm"
from Products
group by CategoryID
having count(ProductID) > 11 

--Hãy cho biết những thể loại nào (CategoryID) có tổng số lượng sản phẩm trong kho	
--(UnitInStock) lớn hơn 350
select CategoryID as "Thể loại",
	sum(UnitsInStock) as "Tổng số lượng sản phẩm" 
from Products
group by CategoryID
having sum(UnitsInStock) > 350

--Hãy cho biết quốc gia nào có nhiều hơn 7 khách hàng
select Country as "Quốc gia",
	count(CustomerID) as "Khách hàng" 
from Customers
group by Country
having count(CustomerID) > 7

--Hãy cho biết quốc gia nào có nhiều hơn 7 đơn hàng
select ShipCountry as "Quốc gia",
	count(OrderID) as "Đơn hàng"
from Orders
group by ShipCountry
having count(OrderID) > 7

--Hãy cho biết những ngày nào có nhiều hơn 5 đơn hàng được giao,
--sắp xếp tăng dần theo ngày giao hàng
select ShippedDate as "Ngày giao hàng",
	count(OrderID) as "Đơn hàng" 
from Orders
where ShippedDate is not null
group by ShippedDate
having count(OrderID) > 5
order by ShippedDate asc

--Hãy cho biết những quốc gia bắt đầu bằng chữ 'A' hoặc 'G'
--và có số lượng đơn hàng lớn hơn 29
select ShipCountry as "Quốc gia",
	count(OrderID) as "Đơn hàng" 
from Orders
where ShipCountry like '[A,G]%'
group by ShipCountry
having count(OrderID) > 29
order by ShipCountry asc

--Hãy cho biết những thành phố nào có số lượng đơn hàng được giao là khác 1 và 2,
--đặt hàng từ ngày '1997-04-01' đến '1997-08-31'
select ShipCity as "Thành phố",
	count(OrderID) as "Đơn hàng"
from Orders
where ShippedDate between '1997-04-01' and '1997-08-31'
group by ShipCity
having count(OrderID) <> 1 and count(OrderID) <> 2

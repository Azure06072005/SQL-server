------------------------------------------Having-----------------------------------------
--select column_name(s)
--from table_name
--where condition
--group by column_name(s)
--having condition
--order by column_name(s)
--Lọc dữ liệu sau group by, có vai trò xét các điều kiện của sum, count, avg
------------------------------------------------------------------------------------------
--hãy cho biết những khách hàng đặt nhiều hơn 20 đơn hàng, sắp xếp theo thứ tự tổng số 
--đơn hàng giảm dần
select CustomerID, count(OrderID) as TotalOrders
from Orders
group by CustomerID
having count(OrderID) > 20
order by count(OrderID) desc

--Lọc ra những nhà cung cấp sản phẩm có (UnitInStock) > 30, và có trung bình đơn giá (UnitPrice)
--có giá trị dưới 50
select SupplierID, 
sum(UnitsInStock) as "Sản phẩm có trong kho",
avg(UnitPrice) as "Trung bình giá"
from Products
group by SupplierID
having sum(UnitsInStock) > 30 and avg(UnitPrice) < 50

--Cho biết tổng số tiền vận chuyển của từng tháng, trong nửa năm sau của năm 1996	
--sắp xếp theo tháng tăng dần
select MONTH(OrderDate) as "month", sum(Freight) "Tổng số tiền vận chuyển"
from Orders
where OrderDate between '1996-07-01' and '1996-12-31'
group by MONTH(OrderDate)
--having MONTH(OrderDate) > 6 and YEAR(OrderDate) > 1996
order by month(OrderDate) asc

--Cho biết tổng số tiền vận chuyển của từng tháng, trong nửa năm sau của năm 1996	
--sắp xếp theo tháng tăng dần và tổng tiền vận chuyển lớn hơn 1000$
select month(ShippedDate) as "month", sum(Freight) as "Tổng tiền vận chuyển"
from Orders
where ShippedDate between '1996-07-01' and '1996-12-31' 
group by month(ShippedDate)
having sum(Freight) > 1000
order by sum(Freight) asc

-----------------------------------------------------------------------------------------------
--Lọc ra nhưng thành phố có số lượng đơn hàng > 16 và sắp xếp theo tổng số lượng giảm dần 
select ShipCity as "Thành phố",
	count(OrderID) as "Mã đơn hàng"
from Orders
group by ShipCity
having COUNT(OrderID) > 16
order by count(OrderID) desc

-- Bài tập: Lọc ra những khách hàng từ Đức (Germany) có tổng số tiền vận
--chuyển (Freight) lớn hơn $1000, và sắp xếp theo tổng số tiền vận 
--chuyển giảm dần.
select CustomerID as "Khách hàng",
	sum(Freight) as "Tổng số tiền vận chuyển",
	ShipCountry as "Quốc gia"
from Orders
where ShipCountry = 'Germany'
group by CustomerID, ShipCountry
having sum(Freight) > 1000
order by sum(Freight) desc
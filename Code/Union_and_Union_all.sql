-------------------------------------Union/Union all------------------------------------
--Đặt vấn đề 
--Truy vấn 1
--Từ bảng Order Details hãy liệt kê các đơn đặt hàng có UnitPrice nằm trong 
--phạm vi từ 100-200
select * 
from [Order Details]
where UnitPrice between 100 and 200

--Truy vấn 2
--Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Quantity nằm trong 
--phạm vi từ 10-20
select *
from [Order Details] od
where od.Quantity in (10, 20)

--Truy vấn 3
--từ bảng Order Details hãy liệt kê các đơn đặt hàng có UnitPrice nằm trong phạm vi từ 
--100 đến 200 và đơn hàng phải có Quantity bằng 10 hoặc 20
select *
from [Order Details] od
where (od.UnitPrice between 100 and 200)
	and (od.Quantity in (10,20))

--Truy vấn 4
--từ bảng Order Details hãy liệt kê các đơn đặt hàng có UnitPrice nằm trong phạm vi từ 
--100 đến 200 và đơn hàng phải có Quantity bằng 10 hoặc 20
select * 
from [Order Details] od
where (od.UnitPrice between 100 and 200)
	or (od.Quantity in (10, 20))


--Query 5
--Từ bằng Order Details hãy liệt kê các đơn hàng có UnitPrice nằm trong phạm vi 
--từ 100 đến 200 hoặc đơn hàng phải có Quantity bằng 10 hoặc 20, có sử dụng distinct
select distinct od.OrderID
from [Order Details] od
where (od.UnitPrice between 100 and 200)
	or(od.Quantity in (10, 20))
order by od.OrderID
-------------------------------------------------------------------------------------------
--select column_name(s) from table 1 
--union
--select column_name(s) from table 2
--Được sử dụng để kếp hợp tập kết quả của hai hoặc nhiều câu lệnh
--Mỗi câu lệnh bên trong phải có cùng số lượng cột
--Các cột cũng phải có kiểu dữ liệu tương tự	
--Các cột trong mỗi câu lệnh cũng phải theo cùng thứ tự

--union all: cho phép các giá trị bị lặp lại (Chấp nhận sự trùng lặp 2 lần)
--V = I or II
select od.OrderID from [Order Details] od where od.UnitPrice between 100 and 200
union
select od.OrderID from [Order Details] od where od.Quantity in (10, 20)

--IV = I or II
select od.OrderID from [Order Details] od where od.UnitPrice between 100 and 200
union all
select od.OrderID from [Order Details] od where od.Quantity in (10, 20)

--Lấy tất cả quôc gia từ 2 table Suppliers và Customers
select s.Country from Suppliers s
union 
select c.Country from Customers c

select c.City, c.Country from Customers c where c.Country like 'U%'
union 
select s.City, s.Country from Suppliers s where s.City = 'London'
union 
select o.ShipCity, o.ShipCountry from Orders o where o.ShipCountry = 'USA'
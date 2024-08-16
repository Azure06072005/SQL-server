------------------------------------DAY, MONTH, YEAR------------------------------------
--Tính số lượng đơn đặt hàng trong năm của từng khách hàng 
SELECT CustomerID, 
COUNT(OrderID) AS TotalOrders,
YEAR(OrderDate) AS Year
FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY CustomerID, YEAR(OrderDate)

--Lọc ra các đơn hàng được đặt hàng tháng 5 năm 1997
SELECT *
FROM Orders
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) = 5

--Lọc ra các đơn hàng được đặt hàng ngày 4 tháng 9 năm 1996
SELECT *
FROM Orders
WHERE YEAR(OrderDate) = 1996 AND MONTH(OrderDate) = 9 AND DAY(OrderDate) = 4

--Lấy danh sách khách hàng đặt hàng trong năm 1998 và số đơn hàng mỗi tháng 
--sắp xếp tháng tăng dần 
SELECT CustomerID, MONTH(OrderDate), COUNT(*)
FROM Orders
WHERE YEAR(OrderDate) = 1998
GROUP BY CustomerID, MONTH(OrderDate)
ORDER BY MONTH(OrderDate)

--Lọc các đơn hàng đã được giao vào tháng 5, và sắp xếp tăng dần theo năm
select CustomerID, 
	MONTH(ShippedDate) as "Thang",
	YEAR(ShippedDate) as "nam",
	count(OrderID) as "So luong"
from Orders
where MONTH(ShippedDate) = 5
group by CustomerID, MONTH(ShippedDate), YEAR(ShippedDate)
order by YEAR(ShippedDate)


-----------------------------------------GROUP BY-----------------------------------------
--SELECT column_name(s)
--FROM table_name
--WHERE condition
--GROUP BY column_name(s)
--ORDER BY column_name(s)
--Thường để nhóm các dòng dữ liệu có cùng giá trị, thường được dùng với các hàm: 
--COUNT(), MAX(), MIN(), SUM(), AVG()
-------------------------------------------------------------------------------------------
--Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID

--Hãy tính giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm 
SELECT SupplierID, AVG(UnitPrice) AS AveragePrice
FROM Products
GROUP BY SupplierID

--Cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho (UnitInStock)
SELECT CategoryID, SUM(UnitsInStock)
FROM Products 
GROUP BY 

--Cho biết Freight thấp nhất và lớn nhất của các đơn hàng theo từng thành phố và 
--quốc gia khác nhau
SELECT ShipCountry, ShipCity, MIN(Freight) AS MinFreight, MAX(Freight) AS MaxFreight
FROM Orders
GROUP BY ShipCountry, ShipCity
ORDER BY ShipCountry, ShipCity
-----------------------------------------------------------------------------------------
--Thống kê số lượng nhân viên theo từng quốc gia khác nhau
SELECT Country, COUNT(EmployeeID)
FROM Employees
GROUP BY Country
ORDER BY Country ASC

--Challenges1: Write an SQL statement 
--Thống kê số khách hàng ở từng quốc gia, từng thành phố
--Tìm các khách hàng có CompanyName có chữ a trong tên
--Sắp xếp theo chiều A-Z Country
SELECT Country, City, COUNT(CustomerID) AS Total
FROM Customers
WHERE CompanyName LIKE '%a%'
GROUP BY Country, City
ORDER BY Country ASC
--Challenges2: Write an SQL Statment
-- Tính tổng số tiền vận chuyển ở từng thành phố, quốc qua
-- Chỉ lấy những ShipName có có chữ 'b' 
--Sắp xếp theo chiều từ A-Z của ShipNAme
SELECT ShipCountry, ShipCity, SUM(Freight) AS 'Total'
FROM Orders
WHERE ShipName LIKE '%b%'
GROUP BY ShipCountry, ShipCity
ORDER BY ShipCountry ASC
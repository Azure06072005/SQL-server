-------------------------------------BETWEEN--------------------------------
--SELECT column_name(s)
--FROM table_name
--WHERE column_name BETWEEN value1 AND value2
--Toán tử between chọn các giá trị trong một phạm vi nhất định. Các giá trị có thể 
--là số, văn bản hoặc ngày tháng 
--bao gồm giá trị bắt đầu và giá trị kết thúc
------------------------------------------------------------------------------
--lấy danh sách các sản phẩm có giá bán trong khoảng từ 10 - 20$
SELECT *
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20

--Lấy danh sách các đơn đặt hàng trong khoảng thời gian từ ngày 1996-07-01 đến 1996-07-31
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
--Lưu ý: sử dụng chuỗi chúng ta dùng ''

--Tính tổng Freight của các đơn hàng trong khoảng thời gian từ ngày 1996-07-01 đến 1996-07-31
SELECT SUM(Freight) AS "Tổng số tiền vận chuyển"
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
------------------------------------------------------------------------------
--Lấy ds các đơn đặt hàng trong khoảng từ 1/1/1997 đến 31/12/1997
--và được vận chuyển bằng đường tàu biển (ShipVia = 3)
SELECT *
FROM Orders
WHERE ShipVia = 3 AND OrderDate BETWEEN '1997-1-1' AND '1997-12-31'

--Thử thách 1: Viết câu lệnh SQL liệt kê họ và tên nhân viên,
-- chỉ sống ở London,
--có ngày tháng năm sinh từ đến 1/1/1952 đến 31/12/1963 
--hoặc ngày tuyển từ 1/2/1992 đến 31/12/1993
-- chỉ lấy 3 nhân viên đầu tiên sắp xếp theo [LastName] A-Z.
SELECT TOP 3 
(LastName + ' ' + FirstName) AS "Fullname"
FROM Employees
WHERE City = 'London' 
AND BirthDate BETWEEN '1952-1-1' AND '1963-12-31'
OR BirthDate BETWEEN '1992-2-1' AND '1993-12-31'
ORDER BY LastName ASC



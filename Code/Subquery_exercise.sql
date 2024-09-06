--Liệt kê các đơn hàng có ngày đặt hàng gần nhất
SELECT *
FROM Orders as o
WHERE o.OrderDate = (
    SELECT MAX(o.OrderDate) as "Ngày"
    FROM Orders 
)

--Liệt kê tất cả các sản phẩm (ProductName) mà không có đơn đặt hàng nào đặt mua chúng 
SELECT * 
FROM Products as p
WHERE p.ProductID NOT IN (
    SELECT DISTINCT od.ProductID
    FROM [Order Details] as od
)

--Lấy thông tin về các đơn hàng, và tên các sản phẩm
--thuộc các đơn hàng chưa được giao cho khách 

SELECT o.OrderID, p.ProductName
FROM Orders as o 
INNER JOIN [Order Details] as od
ON o.OrderID = od.OrderID
INNER JOIN Products as p
ON p.ProductID = od.ProductID
WHERE o.OrderID IN
(
    SELECT o.OrderID  
    FROM Orders as o
    WHERE o.ShippedDate IS NULL
)

--Lấy thông tin về các sản phẩm có số lượng tồn kho 
--ít hơn số lượng tồn kho trung bình của tất cả các sản phẩm

SELECT p.*
FROM Products as p 
WHERE p.UnitsInStock > (
    SELECT AVG(p.UnitsInStock)
    FROM Products as p
)

--Lấy thông tin về các khách hàng có tổng giá trị đơn hàng lớn nhất
SELECT *
FROM Customers as c
INNER JOIN Orders as o
ON o.CustomerID = c.CustomerID
WHERE o.OrderID IN(
    SELECT OrderID
    FROM(
        SELECT OrderId, SUM(UnitPrice * Quantity) as Order_TotalPrice
        FROM [Order Details]
        GROUP BY
    )
)
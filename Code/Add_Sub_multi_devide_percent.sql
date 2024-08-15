-------------------------------+, -, *, /, %-----------------------------------
--tính số lượng còn lại trong kho (UnitInStock) sau khi bán hết các sản phẩm
--đã được đặt hàng (UnitOnOrders)
--StockRemaining = UnitInStock - UnitOnOrders
SELECT 
ProductID AS "Mã đơn hàng",
ProductName AS "Tên đơn hàng",
UnitsInStock AS "Số lượng có trong kho",
UnitsOnOrder AS "Số lượng đặt hàng",
UnitsInStock - UnitsOnOrder AS "Hàng tồn kho"
FROM Products

--tính giá trị đơn hàng chi tiết trong bảng Order Details
--OverDetailValue = UnitPrice x Quantity
SELECT TOP 30 PERCENT *,
UnitPrice * Quantity AS "Thành Tiền"
FROM [Order Details]
ORDER BY "Thành Tiền" DESC

--tính tỉ lệ giá vận chuyển đơn hàng (Freight) trung bình của các đơn hàng 
--trong bảng Orders so với giá trị của đơn hàng lớn nhất (MaxFreight)
--FreightRatio = AVG(Freight) / MAX(Freight)
SELECT 
AVG(Freight) / MAX(Freight) AS "Tỉ lệ giá vận chuyển"
FROM Orders

--liệt kê các sản phẩm, và giá (UnitPrice) của từng sản phẩm sẽ được giảm đi 10%
--Cách 1: Dùng phép * + /
SELECT *,
UnitPrice - UnitPrice * 10 / 100 AS "Giá khuyến mãi"
FROM Products
--Cách 2: Dùng phép *
SELECT *,
UnitPrice - UnitPrice * 0.1 AS "Giá khuyến mãi"
FROM Products
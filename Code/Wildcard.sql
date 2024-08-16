-------------------------------------WILDCARD-------------------------------------
--%: Thể hiện không hay nhiều kí tự đứng trước hay sau nó 
--_: Thể hiện một kí tự đơn lẻ
--[,]: Thể hiện các kí tự bên trong ngoặc vuông 
--^: Không thể hiện các kí tự chứa nó
--'-': Thể hiện các kí tự trong range
----------------------------------------------------------------------------------
--Lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ 'A'
SELECT *
FROM Customers
WHERE ContactName LIKE 'A%'

--Lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ 'H'
--và chữ thứ 2 là bất kì kí tự nào 

SELECT *
FROM Customers
WHERE ContactName LIKE 'H_%'

--Lọc ra tất cả các đơn hàng được gửi đến thành phố có chữ cái bắt đầu là L,
--chữ cái thứ hai là u hoặc o
SELECT *
FROM Orders
WHERE ShipCity LIKE 'L[u,o]%'

--Lọc ra tất cả các đơn hàng được gửi đến thành phố có chữ cái bắt đầu là L,
--chữ cái thứ hai KHÔNG là u hoặc o
SELECT *
FROM Orders
WHERE ShipCity LIKE 'L[^u,o]%'

--Lọc ra tất cả các đơn hàng được gửi đến thành phố có chữ cái bắt đầu là L,
--chữ cái từ a đến e
SELECT *
FROM Orders
WHERE ShipCity LIKE 'L[a-e]%'
------------------------------------------------------------------------------------------
--Lấy tất cả các nhà cung cấp hàng có tên công ty bắt đầu bằng chữ A và không chứa kí tự b
SELECT *
FROM Suppliers
WHERE CompanyName LIKE 'A[^b]%'

--Thử  thách  :
--1. Lọc  ra  tất  cả  các  khách  hàng  có  địa  chỉ  bắt  đầu  bằng  chữ  H , 
--chữ  thứ 2 là  bất  kì  ký  tự  nào.
SELECT * 
FROM Customers
WHERE Address LIKE 'H_%'
--2. Lọc  rả  tất  cả  các  đơn  hàng  có  địa chỉ giao hàng với chữ cái đầu không  
-- đầu bằng A hoặc H, chữ  cái  thứ  2 là   S  hoặc  G
SELECT *
FROM Orders
WHERE ShipAddress LIKE '[^A,H][S,G]%'
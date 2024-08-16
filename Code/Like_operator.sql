-------------------------------------LIKE OPERATOR--------------------------------
--SELECT column_name1, column_name2	
--FROM table_name
--WHERE columnN LIKE pattern
--Có 2 kí tự thường dùng cùng với LIKE:
--Dấu % đại diện cho không, một hoặc nhiều kí tự
--Dấu _ đại diện cho một kí tự đơn
----------------------------------------------------------------------------------
--Lọc các khách hàng đến từ các quốc gia (Country) bắt đầu bằng chữ 'A'
SELECT *
FROM Customers
WHERE Country LIKE 'A%'

--Lấy danh sách các đơn đặt hàng gửi đến các thành phố có chứa chữ 'a'
SELECT *
FROM Orders
WHERE ShipCity LIKE '%a%'

--Lọc ra tất cả các đơn hàng với điều kiện:
--ShipCountry LIKE 'U_'
--ShipCountry LIKE 'U%'
SELECT *
FROM Orders
WHERE ShipCountry LIKE 'U_A' 

SELECT *
FROM Orders
WHERE ShipCountry LIKE 'U%' 
----------------------------------------------------------------------------------
--Lấy ra tất cả các nhà cung cấp hàng có chữ 'b' trong tên của công ty
SELECT *
FROM Suppliers
WHERE CompanyName LIKE '%b%'

--Challenge1: Write an SQL statement to list employees fullname with the letter "e" in the last name 
--and born from 1952-01-01 to 1962-12-31, 
--arrange in A-Z order by first Name
--taking only the first 5 lines
SELECT TOP 5 *,
(FirstName + ' ' + LastName) AS 'Fullname'
FROM Employees
WHERE LastName LIKE '%e%'
AND BirthDate BETWEEN '1952-01-01' AND '1962-12-31'
ORDER BY FirstName ASC
--Challenge 2: Write an SQL statement to list employees fullname with 'U__' (two underscores) in the [Country]
-- and start working from 1992-03-23 to 1994-12-31
-- agrange in Z-A order by the last name
--taking only the first 4 lines
SELECT TOP 4 *,
(FirstName + ' ' + LastName) AS Fullname
FROM Employees
WHERE Country LIKE 'U__' 
AND HireDate BETWEEN '1992-03-23' AND '1994-12-31'
ORDER BY LastName ASC

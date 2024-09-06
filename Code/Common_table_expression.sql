-----------------------------------------------------------------------COMMON TABLE EXPRESSION--------------------------------------------------------------------------
--Được dùng để tạo bảng tạm thời và sử dụng nó trong các truy vấn sau đó
--Giúp làm cho câu truy vấn trở nên dễ đọc và dễ quản lý hơn
--WITH cte_name(column_1, column_2,...) as (
--          Truy vấn để định nghĩa CTE
--)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
WITH short_cte AS(
    SELECT EmployeeID, LastName, FirstName
    FROM Employees
)

SELECT * 
FROM short_cte

--Lấy thông tin về các sản phẩm (Products) có cùng thể loại với một sản phẩm cụ thể

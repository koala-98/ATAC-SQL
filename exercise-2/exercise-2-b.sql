-- exercise 2-b: Hien thi 5 san pham co gia cao nhat (UnitPrice)
/*EXPLAIN: Sap xep UnitPrice giam dan va lay 5 san pham dau tien*/

SELECT *
FROM Products
ORDER BY UnitPrice DESC
LIMIT 5;
-- exercise 1-a: Liet ke tat ca Products cung voi UnitPrice va UnitsInStock
/*EXPLAIN: Self-join được sử dụng để so sánh các dòng dữ liệu trong cùng một bảng, sử dụng <> để đảm bảo rằng ProductID là khác nhau*/ 
 
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products;
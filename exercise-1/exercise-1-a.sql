-- exercise 1-a: Liet ke tat ca Products cung voi UnitPrice va UnitsInStock
/*EXPLAIN: Self-join được sử dụng để so sánh các dòng dữ liệu trong cùng một bảng, sử dụng <> để đảm bảo rằng ProductID là khác nhau*/ 
 
SELECT p1.ProductID, p1.ProductName, p1.UnitPrice, p1.UnitsInStock
FROM Products p1
JOIN Products p2 ON p1.UnitPrice = p2.UnitPrice AND p1.UnitsInStock = p2.UnitsInStock
WHERE p1.ProductID <> p2.ProductID;
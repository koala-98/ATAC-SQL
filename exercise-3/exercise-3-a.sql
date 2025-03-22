-- exercise 3-a: Liet ke danh sach cac Products cung voi ten Categories va Suppliers

SELECT p1.ProductID, p1.ProductName, p1.CategoryID, c.CategoryName, p1.SupplierID, s.CompanyName, p2.ProductName AS OtherProductName
FROM Products p1
JOIN Categories c on p1.CategoryID = c.CategoryID -- Lay CategoryName trong bang Categories
JOIN Suppliers s on p1.SupplierID = s.SupplierID -- Lay CompanyName trong bang Suppliers
JOIN Products p2 on p1.CategoryID = p2.CategoryID AND p1.SupplierID = p2.SupplierID -- Self-JOIN lay cac san pham cung Categories va Suppliers
WHERE p1.ProductID <> p2.ProductID; -- Loai cac san pham trung lap voi chinh no


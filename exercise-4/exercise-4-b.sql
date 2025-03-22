/*exercise 4-b: Them (INSERT) mot san pham moi co ten "Organic Coffee" vao bang Product, thuoc danh muc "Beverages",
co gia 25.00, so luong ton kho la 100, va duoc cung cap boi nha cung cap bat ky*/

INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock)
VALUES (
    'Organic Coffee', -- ProductName
    (SELECT SupplierID FROM Suppliers ORDER BY RANDOM() LIMIT 1), -- Lay ngau nhien 1 dong trong bang Suppliers
    (SELECT CategoryID FROM Categories WHERE CategoryName = 'Beverages'), -- Lay CategoryID co CategoryName la Beverages
    25.00, -- UnitPrice
    100); -- UnitsInStock

/*Check new record in Products table*/
SELECT *
FROM Products
WHERE ProductName = 'Organic Coffee'
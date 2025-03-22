-- exercise 4-a: cap nhat (UPDATE) gia san pham tang 10% cho tat ca san pham thuoc danh muc co ten la "Beverages"

/*Dung Sub-query JOIN 2 bang Products và Categories de lay ra CategoryName la "Beverages" */
UPDATE Products
SET UnitPrice = UnitPrice * 1.1
WHERE CategoryID = (SELECT c.CategoryID 
					FROM Products p 
					JOIN Categories c on p.CategoryID = c.CategoryID
					WHERE c.CategoryName = 'Beverages');

/*Query nay de kiem tra UnitPrice sau khi update */
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM Products p 
JOIN Categories c on p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Beverages';
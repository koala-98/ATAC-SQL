-- exercise 5-a: Liet ke danh sach khach hang (Customers) khong co don hang nao trong bang Orders

SELECT c.CustomerID, c.CompanyName
FROM Customers c 
LEFT JOIN Orders o on c.CustomerID = o.CustomerID -- LEFT JOIN de giu lai tat ca Customers ke ca khong co Order
WHERE o.OrderID IS NULL;
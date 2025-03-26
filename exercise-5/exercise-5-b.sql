-- exercise 5-b: Hien thi ten khach hang (CompanyName) va tong doanh thu ho da chi tieu, sap xep giam dan va chi lay khach hang chi tieu nhieu nhat

SELECT c.CompanyName, o.CustomerID, SUM(od.UnitPrice * od.Quantity * (1 - od.discount)) AS TotalSpend -- Tong chi tieu = UnitPrice*Quantity*(1-Discount) 
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID -- Nhom theo khach hang
ORDER BY TotalSpend DESC -- Sap xep giam dan
LIMIT 1 -- Lay gia tri dau tien tuc la khach hang chi tieu nhieu nhat;

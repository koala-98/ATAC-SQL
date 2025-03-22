-- exercise 2-a: Tinh tong doanh thu(UnitPrice*Quantity) cua tung khach hang dua tren bang Orders va Order Details
/*EXPLAIN: 
- SUM(od.UnitPrice * od.Quantity) Tinh tong doanh thu cua khach hang, trong bang Order Details, OrderID xuat hien nhieu lan, vay nen dung
SUM de cong don cho moi khach han*/

SELECT o.CustomerID, SUM(od.UnitPrice * od.Quantity) AS TotalRevenue
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID;
-- exercise 2-a: Tinh tong doanh thu(UnitPrice*Quantity) cua tung khach hang dua tren bang Orders va Order Details
/*EXPLAIN: 
- SUM(od.UnitPrice * od.Quantity) Tinh tong doanh thu cua khach hang, trong bang Order Details, OrderID xuat hien nhieu lan, vay nen dung
SUM de cong don cho moi khach han
- LEFT JOIN do ben bang Order Details nhieu OrderID co gia tri NULL*/

SELECT o.OrderID, o.CustomerID, SUM(od.UnitPrice * od.Quantity) AS TotalRevenue
FROM Orders o
LEFT JOIN "Order Details" od ON o.OrderID = od.OrderID
GROUP BY o.OrderID;
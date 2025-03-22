-- exercise 3-b: Tim tat ca khach hang (Customers) co ten cong ty chua chu "Market"

SELECT CustomerID, CompanyName
FROM Customers
WHERE CompanyName like '%Market%' -- CompanyName ten chua chu Market
-- exercise 1-b: Tim tat ca don hang co OrderDate trong nam 1997 
/*EXPLAIN: Chon trong khoang thoi gian 1997-1-1 toi 1997-12-31*/

SELECT * 
FROM Orders
WHERE OrderDate >= '1997-01-01' AND OrderDate < '1998-01-01';
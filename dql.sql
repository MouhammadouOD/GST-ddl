SELECT 
    COUNT(*) AS total_orders,
    AVG(total_amount) AS average_amount,
    MAX(total_amount) AS highest_total_amount,
    MIN(total_amount) AS lowest_total_amount
FROM Orders;


SELECT product_name, category
FROM Product
WHERE Price BETWEEN 5000 AND 10000;


SELECT * FROM Product
ORDER BY Price DESC;


SELECT 
    COUNT(*) AS total_orders,
    AVG(total_amount) AS average_amount,
    MAX(total_amount) AS highest_total_amount,
    MIN(total_amount) AS lowest_total_amount
FROM Orders;


SELECT Product_id, COUNT(*) AS number_of_orders
FROM Orders
GROUP BY Product_id;


SELECT Customer_id
FROM Orders
GROUP BY Customer_id
HAVING COUNT(*) > 2;


SELECT 
    EXTRACT(MONTH FROM OrderDate) AS month,
    COUNT(*) AS number_of_orders
FROM Orders
WHERE EXTRACT(YEAR FROM OrderDate) = 2020
GROUP BY EXTRACT(MONTH FROM OrderDate)
ORDER BY month;


SELECT 
    p.product_name, 
    c.customer_name, 
    o.OrderDate
FROM Orders o
JOIN Product p ON o.Product_id = p.Product_id
JOIN Customer c ON o.Customer_id = c.Customer_id;


SELECT *
FROM Orders
WHERE OrderDate = ADD_MONTHS(SYSDATE, -3);


SELECT Customer_id
FROM Customer
WHERE Customer_id NOT IN (SELECT DISTINCT Customer_id FROM Orders);

SELECT c.name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

SELECT c.name, o.order_id, o.order_date
FROM Customers c
FULL JOIN Orders o ON c.customer_id = o.customer_id;

--Customer rank by Total spending
SELECT c.name, SUM(o.total_amount) AS total_spent, 
       RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS rank
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

--using row_number

SELECT c.name, o.order_id, 
       ROW_NUMBER() OVER (PARTITION BY c.customer_id ORDER BY o.order_date) AS order_number
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;


--Total Revenue by customer

WITH CustomerRevenue AS (
    SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name
)
SELECT name, total_spent
FROM CustomerRevenue
WHERE total_spent > 500;


-- product with highest price

SELECT product_name, price
FROM Products
WHERE price = (SELECT MAX(price) FROM Products);


-- INDEX

CREATE INDEX idx_customer_id ON Orders(customer_id);
CREATE INDEX idx_product_id ON Order_Items(product_id);


EXPLAIN ANALYZE 
SELECT o.order_id, c.name, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.customer_id = 1;

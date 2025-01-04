-- Revenue Analysis
-- Calculate total revenue
WITH RevenueCTE AS (
    SELECT SUM(total_amount) AS total_revenue
    FROM Orders
)
SELECT * FROM RevenueCTE;

-- Find revenue generated per product
WITH ProductRevenue AS (
    SELECT p.product_name, SUM(oi.price * oi.quantity) AS revenue
    FROM Products p
    JOIN Order_Items oi ON p.product_id = oi.product_id
    GROUP BY p.product_name
)
SELECT * FROM ProductRevenue;

-- Customer Insights
-- List top 5 customers by total spending
WITH CustomerSpending AS (
    SELECT c.name, SUM(o.total_amount) AS total_spent
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.name
)
SELECT *
FROM CustomerSpending
ORDER BY total_spent DESC
LIMIT 5;


-- Identify customers who haven’t made any purchases
WITH NonPurchasingCustomers AS (
    SELECT c.name
    FROM Customers c
    LEFT JOIN Orders o ON c.customer_id = o.customer_id
    WHERE o.order_id IS NULL
)
SELECT * FROM NonPurchasingCustomers;


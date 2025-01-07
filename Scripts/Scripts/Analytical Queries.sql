-- Revenue Analysis
-- Calculate total revenue
SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- Find revenue generated per product
SELECT p.product_name, SUM(oi.price * oi.quantity) AS revenue
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- Customer Insights
-- List top 5 customers by total spending
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Identify customers who haven’t made any purchases
SELECT c.name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Product Trends: Find the top 3 best-selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- Product Trends: Identify products that are out of stock
SELECT product_name
FROM Products
WHERE stock_quantity = 0;

-- Order Details: Retrieve all items in a specific order
SELECT oi.order_id, p.product_name, oi.quantity, oi.price
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
WHERE oi.order_id = 1;

-- Order Details: Calculate the total amount of an order
SELECT order_id, SUM(price * quantity) AS total_amount
FROM Order_Items
WHERE order_id = 1
GROUP BY order_id;

-- Monthly Trends: Calculate the number of orders and total revenue for each month
SELECT DATE_TRUNC('month', order_date) AS month, COUNT(order_id) AS total_orders, SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY month
ORDER BY month;

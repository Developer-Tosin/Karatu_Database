-- Data Operations

-- Add a New Customer
INSERT INTO Customers (name, email, phone_number, address) VALUES
('Ivy Gold', 'ivy.g@example.com', '9191919191', '808 Platinum Street');

-- Update the Stock Quantity of a Product After a Purchase
UPDATE Products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1; -- Assuming 1 units of product 1 (Laptop) were purchased.


-- Retrieve All Orders Made by a Specific Customer
SELECT o.order_id, o.order_date, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.name = 'Jane Smith';

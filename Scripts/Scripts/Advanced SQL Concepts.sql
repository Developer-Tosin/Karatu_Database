-- Add a new customer
INSERT INTO Customers (name, email, phone_number, address) VALUES
('Liam Scott', 'liam@example.com', '123-555-7890', '999 Fir St, Green City, OR, 97035');

-- Update the stock quantity of a product after a purchase
UPDATE Products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1;

DELETE FROM Orders
WHERE order_id = 1;

SELECT *
FROM Orders
WHERE customer_id = 1;
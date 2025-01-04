-- Insert Customers
INSERT INTO Customers (name, email, phone_number, address) VALUES
('John Doe', 'john.doe@example.com', '1234567890', '123 Elm Street'),
('Jane Smith', 'jane.smith@example.com', '0987654321', '456 Oak Street'),
('Alice Johnson', 'alice.j@example.com', '1112223333', '789 Pine Street'),
('Bob Brown', 'bob.b@example.com', '4445556666', '101 Maple Avenue'),
('Carol White', 'carol.w@example.com', '7778889999', '202 Birch Lane'),
('David Black', 'david.b@example.com', '1212121212', '303 Cedar Court'),
('Emma Green', 'emma.g@example.com', '3434343434', '404 Spruce Drive'),
('Frank Blue', 'frank.b@example.com', '5656565656', '505 Walnut Street'),
('Grace Gray', 'grace.g@example.com', '7878787878', '606 Ash Boulevard'),
('Hank Silver', 'hank.s@example.com', '9090909090', '707 Cherry Circle');


-- Insert Products
INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 800.00, 50),
('Smartphone', 'Electronics', 500.00, 100),
('Headphones', 'Accessories', 50.00, 200),
('Keyboard', 'Accessories', 30.00, 150),
('Mouse', 'Accessories', 20.00, 150),
('Monitor', 'Electronics', 200.00, 80),
('Printer', 'Office Supplies', 150.00, 40),
('Desk', 'Furniture', 120.00, 30),
('Chair', 'Furniture', 80.00, 25),
('USB Drive', 'Accessories', 15.00, 300);

-- Insert Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-01-01', 850.00),
(2, '2025-01-02', 530.00),
(3, '2025-01-03', 70.00),
(4, '2025-01-04', 150.00),
(5, '2025-01-05', 320.00),
(6, '2025-01-06', 600.00),
(7, '2025-01-07', 100.00),
(8, '2025-01-08', 45.00),
(9, '2025-01-09', 220.00),
(10, '2025-01-10', 180.00),
(1, '2025-01-11', 300.00),
(2, '2025-01-12', 150.00),
(3, '2025-01-13', 200.00),
(4, '2025-01-14', 100.00),
(5, '2025-01-15', 350.00),
(6, '2025-01-16', 700.00),
(7, '2025-01-17', 80.00),
(8, '2025-01-18', 90.00),
(9, '2025-01-19', 120.00),
(10, '2025-01-20', 200.00);

-- Insert Order Items
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 800.00),
(1, 3, 1, 50.00),
(2, 2, 1, 500.00),
(2, 5, 1, 30.00),
(3, 4, 2, 30.00),
(4, 7, 1, 150.00),
(5, 6, 2, 200.00),
(5, 10, 8, 120.00),
(6, 8, 1, 120.00),
(6, 9, 2, 160.00),
(7, 5, 5, 100.00),
(8, 10, 3, 45.00),
(9, 2, 1, 200.00),
(9, 3, 2, 20.00),
(10, 1, 1, 800.00),
(10, 4, 1, 30.00),
(11, 6, 2, 400.00),
(12, 8, 3, 360.00),
(13, 9, 1, 80.00),
(14, 5, 2, 60.00),
(15, 7, 1, 150.00),
(15, 3, 3, 150.00),
(16, 10, 4, 60.00),
(17, 4, 5, 150.00),
(18, 1, 1, 800.00),
(19, 2, 1, 500.00),
(20, 6, 1, 200.00),
(11, 7, 1, 150.00),
(12, 1, 2, 1600.00),
(13, 2, 2, 1000.00),
(14, 3, 4, 200.00),
(15, 5, 3, 90.00),
(16, 6, 1, 200.00),
(17, 8, 2, 240.00),
(18, 9, 1, 80.00),
(19, 10, 5, 75.00),
(20, 4, 2, 60.00),
(11, 3, 6, 300.00),
(12, 2, 1, 500.00),
(13, 1, 3, 2400.00),
(14, 10, 4, 60.00),
(15, 9, 2, 160.00),
(16, 7, 3, 450.00),
(17, 5, 4, 120.00),
(18, 4, 2, 60.00),
(19, 6, 2, 400.00),
(20, 8, 1, 120.00);

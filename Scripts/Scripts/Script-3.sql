-- Database Design and Implementation

-- 1. Create Tables

-- Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    address TEXT NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);

-- Order_Items Table
CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id),
    product_id INT REFERENCES Products(product_id),
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- 2. Populate Tables

-- Insert 10 Customers
INSERT INTO Customers (name, email, phone_number, address) VALUES
('Alice Smith', 'alice@example.com', '123-456-7890', '123 Main St, Metropolis, NY, 10001'),
('Bob Johnson', 'bob@example.com', '123-456-7891', '456 Elm St, Gotham, CA, 90001'),
('Carol White', 'carol@example.com', '123-456-7892', '789 Pine St, Springfield, IL, 62701'),
('David Brown', 'david@example.com', '123-456-7893', '101 Maple St, Smallville, KS, 66002'),
('Emma Davis', 'emma@example.com', '123-456-7894', '202 Oak St, Riverdale, TX, 75001'),
('Frank Miller', 'frank@example.com', '123-456-7895', '303 Cedar St, Star City, WA, 98101'),
('Grace Wilson', 'grace@example.com', '123-456-7896', '404 Birch St, Central City, CO, 80014'),
('Hank Moore', 'hank@example.com', '123-456-7897', '505 Walnut St, Coast City, FL, 33004'),
('Ivy Clark', 'ivy@example.com', '123-456-7898', '606 Cherry St, Hill Valley, CA, 94022'),
('Jack Taylor', 'jack@example.com', '123-456-7899', '707 Willow St, Sunnydale, AZ, 85001');

-- Insert 10 Products
INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 799.99, 50),
('Smartphone', 'Electronics', 699.99, 100),
('Tablet', 'Electronics', 499.99, 75),
('Headphones', 'Accessories', 149.99, 200),
('Mouse', 'Accessories', 29.99, 300),
('Keyboard', 'Accessories', 49.99, 250),
('Monitor', 'Electronics', 199.99, 80),
('Printer', 'Electronics', 99.99, 60),
('Desk Chair', 'Furniture', 129.99, 40),
('Office Desk', 'Furniture', 249.99, 30);

-- Insert 20 Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-12-01', 849.98),
(2, '2024-12-02', 749.98),
(3, '2024-12-03', 579.98),
(4, '2024-12-04', 149.99),
(5, '2024-12-05', 89.98),
(6, '2024-12-06', 129.99),
(7, '2024-12-07', 399.98),
(8, '2024-12-08', 99.99),
(9, '2024-12-09', 459.98),
(10, '2024-12-10', 279.98),
(1, '2024-12-11', 899.98),
(2, '2024-12-12', 349.98),
(3, '2024-12-13', 299.98),
(4, '2024-12-14', 699.98),
(5, '2024-12-15', 299.98),
(6, '2024-12-16', 499.98),
(7, '2024-12-17', 749.98),
(8, '2024-12-18', 129.99),
(9, '2024-12-19', 649.98),
(10, '2024-12-20', 229.98);

-- Insert 50 Order Items
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 799.99),
(1, 5, 1, 29.99),
(2, 2, 1, 699.99),
(2, 6, 1, 49.99),
(3, 3, 1, 499.99),
(3, 4, 1, 149.99),
(4, 4, 1, 149.99),
(5, 5, 3, 89.97),
(6, 10, 1, 129.99),
(7, 7, 2, 399.98),
(8, 8, 1, 99.99),
(9, 9, 2, 259.98),
(10, 10, 1, 249.99),
(1, 2, 1, 699.99),
(2, 3, 2, 999.98),
(3, 6, 3, 149.97),
(4, 7, 1, 199.99),
(5, 8, 1, 99.99),
(6, 9, 1, 129.99),
(7, 10, 1, 249.99),
(8, 1, 1, 799.99),
(9, 2, 1, 699.99),
(10, 3, 1, 499.99),
(1, 4, 2, 299.98),
(2, 5, 1, 29.99),
(3, 6, 1, 49.99),
(4, 7, 1, 199.99),
(5, 8, 1, 99.99),
(6, 9, 2, 259.98),
(7, 10, 1, 249.99);


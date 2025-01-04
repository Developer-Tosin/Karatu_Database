CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);
INSERT INTO Products (product_name, category, price) VALUES
('Laptop Pro', 'Electronics', 999.99),
('Smartphone Max', 'Electronics', 799.99),
('Headphones X', 'Electronics', 199.99),
('4K TV', 'Electronics', 1299.99),
('Bluetooth Speaker', 'Electronics', 149.99),
('Coffee Maker', 'Home Appliances', 89.99),
('Blender Pro', 'Home Appliances', 129.99),
('Microwave Oven', 'Home Appliances', 249.99),
('Air Fryer', 'Home Appliances', 179.99),
('Vacuum Cleaner', 'Home Appliances', 299.99);



create table Customers(
customer_id serial primary key,
name text not null,
email text not null,
created_at timestamp
);

INSERT INTO Customers (name, email, created_at) VALUES
('Alice Smith', 'alice.smith@example.com', '2023-01-15'),
('Bob Johnson', 'bob.johnson@example.com', '2023-02-10'),
('Charlie Brown', 'charlie.brown@example.com', '2023-03-08'),
('Diana Prince', 'diana.prince@example.com', '2023-04-20'),
('Evan Wright', 'evan.wright@example.com', '2023-05-14'),
('Fiona Clark', 'fiona.clark@example.com', '2023-06-01'),
('George Harris', 'george.harris@example.com', '2023-07-11'),
('Holly Martin', 'holly.martin@example.com', '2023-08-17'),
('Isaac Lee', 'isaac.lee@example.com', '2023-09-21'),
('Julia White', 'julia.white@example.com', '2023-10-04');


CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES Customers(customer_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2023-01-15 10:35:21', 259.99),
(2, '2023-01-17 14:20:10', 399.50),
(3, '2023-01-18 08:50:45', 89.99),
(4, '2023-01-20 11:10:30', 129.99),
(5, '2023-01-21 15:25:55', 299.99),
(6, '2023-01-23 09:45:00', 159.99),
(7, '2023-01-25 12:30:00', 499.99),
(8, '2023-01-26 13:00:00', 49.99),
(9, '2023-01-28 16:00:00', 250.00),
(10, '2023-01-30 17:15:30', 119.50);

CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL  REFERENCES Orders(order_id),
    product_id INTEGER NOT NULL REFERENCES Products(product_id),
    quantity INTEGER NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 2, 499.99),
(2, 3, 1, 199.99),
(3, 5, 3, 149.99),
(4, 7, 2, 129.99),
(5, 9, 1, 299.99),
(6, 2, 1, 799.99),
(7, 4, 2, 1299.99),
(8, 6, 1, 89.99),
(9, 8, 3, 249.99),
(10, 10, 1, 19.99);
-- Menambahkan Data Pelanggan
INSERT INTO Customers (name, phone_number, address, email)
VALUES 
('John Doe', '08123456789', 'Jl. Sudirman No. 10', 'john.doe@example.com'),
('Jane Smith', '08987654321', 'Jl. Thamrin No. 5', 'jane.smith@example.com');

-- Menambahkan Data Supplier
INSERT INTO Suppliers (company_name, contact_person, phone_number, address)
VALUES 
('PT Supplier A', 'Budi Santoso', '0811223344', 'Jl. Industri No. 1'),
('CV Supplier B', 'Ani Wijaya', '0855667788', 'Jl. Pabrik No. 2');

-- Menambahkan Data Produk
INSERT INTO Products (name, price, stock, category, supplier_id)
VALUES 
('Laptop Pro X', 15000000, 10, 'Electronics', 1),
('Mouse Wireless', 250000, 50, 'Accessories', 1),
('Keyboard Mechanical', 750000, 20, 'Accessories', 2);

-- Menambahkan Data Transaksi
INSERT INTO Transactions (customer_id, transaction_date, total_amount)
VALUES 
(1, '2023-10-01', 15250000),
(2, '2023-10-02', 750000);

-- Menambahkan Data Detail Transaksi
INSERT INTO TransactionDetails (transaction_id, product_id, quantity, subtotal)
VALUES 
(1, 1, 1, 15000000), -- Laptop Pro X
(1, 2, 1, 250000),   -- Mouse Wireless
(2, 3, 1, 750000);   -- Keyboard Mechanical

-- Menambahkan Data Inventaris
INSERT INTO Inventory (product_id, quantity)
VALUES 
(1, 9), -- Stok Laptop Pro X tersisa 9 setelah penjualan
(2, 49), -- Stok Mouse Wireless tersisa 49 setelah penjualan
(3, 19); -- Stok Keyboard Mechanical tersisa 19 setelah penjualan
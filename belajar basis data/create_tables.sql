-- Tabel Pelanggan
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    address TEXT,
    email VARCHAR(100)
);

-- Tabel Supplier
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(100),
    contact_person VARCHAR(100),
    phone_number VARCHAR(15),
    address TEXT
);

-- Tabel Produk
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT,
    category VARCHAR(50),
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Tabel Transaksi
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    transaction_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Tabel Detail Transaksi
CREATE TABLE TransactionDetails (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Tabel Karyawan
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Tabel Inventaris
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
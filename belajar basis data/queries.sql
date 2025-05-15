-- Total Penjualan Harian
SELECT transaction_date, SUM(total_amount) AS total_sales
FROM Transactions
GROUP BY transaction_date;

-- Produk Terlaris
SELECT p.name AS product_name, SUM(td.quantity) AS total_sold
FROM TransactionDetails td
JOIN Products p ON td.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- Daftar Pelanggan dengan Total Belanja
SELECT c.name AS customer_name, SUM(t.total_amount) AS total_spent
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
GROUP BY c.name;
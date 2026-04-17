-- Tabelle für Produkte
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price NUMERIC(10,2)
);

-- Tabelle für Kunden
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    region VARCHAR(100)
);

-- Tabelle für Verkäufe
CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    customer_id INT REFERENCES customers(customer_id),
    sale_date DATE NOT NULL,
    quantity INT NOT NULL,
    total_amount NUMERIC(10,2) NOT NULL
);

-- Create Tables
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    shipping_address TEXT
);

CREATE TABLE channels (
    channel_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    api_endpoint TEXT,
    platform VARCHAR(50) -- e.g., web, shopee, lazada
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    capacity_mah INTEGER,
    wattage INTEGER,
    price DECIMAL(10, 2),
    stock_quantity INTEGER DEFAULT 0,
    lifestyle_tag VARCHAR(100), -- e.g., travel, digital nomads
    channel_id INTEGER REFERENCES channels(channel_id)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_date DATE DEFAULT CURRENT_DATE,
    total_amount DECIMAL(10, 2),
    status VARCHAR(50) -- e.g., pending, shipped, delivered
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES orders(order_id),
    product_id INTEGER REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL
);

-- Insert Mock Data
INSERT INTO customers (customer_id, name, email, phone, shipping_address) VALUES
(1, 'naruto', 'thaweeratch@gmail.com', '093-446-2926', '123/456 ถนน ราชพฤษก จังหวัด นนทบุรี'),
(2, 'Sakura', 'sakura@gmail.com', '091-666-5555', '123/456 ถนน แจ้งวัฒนะ จังหวัด นนทบุรี');

INSERT INTO channels (channel_id, name, api_endpoint, platform) VALUES
(1, 'web', '', 'web'),
(2, 'shopee', '', 'shopee'),
(3, 'lazada', '', 'lazada');

INSERT INTO products (product_id, name, capacity_mah, wattage, price, stock_quantity, lifestyle_tag, channel_id) VALUES
(1, 'Anker Powerbank', 5000, 20, 500, 30, 'travel', 1),
(2, 'Belkin Powerbank', 10000, 30, 1000, 20, 'digital nomads', 2);

INSERT INTO orders (order_id, customer_id, order_date, total_amount, status) VALUES
(1, 1, '2026-03-10', 500, 'shipped');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 500);

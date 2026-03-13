-- Clear existing data to prevent duplication
TRUNCATE TABLE products RESTART IDENTITY CASCADE;

-- Mock Data for Suppliers
INSERT INTO Sroducts (product_id, product_name) VALUES
(1, 'Patty''s Premium Meats', 'Patty Smith', '555-0101'),
(2, 'The Bun Barn', 'Brad Breadson', '555-0102'),
(3, 'Freshest Farm Produce', 'Frank Farmer', '555-0103');
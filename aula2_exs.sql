SELECT customer_id, first_name, last_name FROM sales.customers WHERE [state] = 'TX' OR state = 'CA' 
SELECT * FROM production.categories
UPDATE production.categories SET category_name = 'Multi-Hybrid Bikes' WHERE category_id = 8
SELECT * FROM production.categories
DELETE FROM production.categories WHERE category_id = 8
SELECT * FROM production.products
SELECT * FROM production.categories
SELECT * FROM sales.stores
SELECT * FROM production.categories
SET IDENTITY_INSERT production.categories ON;
INSERT INTO production.categories(category_id,category_name) VALUES (8, 'Hybrid Bikes')
SELECT * FROM production.categories
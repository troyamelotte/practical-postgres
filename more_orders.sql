-- Insert more orders with historical dates
INSERT INTO "order" (payment_method, user_id, created_at) VALUES
('card', 3, '2024-01-15 10:30:00'),
('ach', 5, '2024-02-02 14:45:00'),
('card', 7, '2024-02-20 09:15:00'),
('ach', 9, '2024-03-05 16:20:00'),
('card', 11, '2024-03-18 11:00:00'),
('ach', 13, '2024-04-01 13:30:00'),
('card', 15, '2024-04-15 10:45:00'),
('ach', 2, '2024-05-03 15:00:00'),
('card', 4, '2024-05-20 12:15:00'),
('ach', 6, '2024-06-07 14:30:00'),
('card', 8, '2024-06-25 11:45:00'),
('ach', 10, '2024-07-10 09:00:00');

-- Insert corresponding order_product entries
-- We'll assume the order IDs start from 13 (continuing from the previous inserts)
INSERT INTO order_product (quantity, order_id, product_id, created_at) VALUES
(2, 13, 3, '2024-01-15 10:30:00'),
(1, 13, 8, '2024-01-15 10:30:00'),
(3, 14, 12, '2024-02-02 14:45:00'),
(1, 15, 5, '2024-02-20 09:15:00'),
(2, 15, 10, '2024-02-20 09:15:00'),
(1, 16, 15, '2024-03-05 16:20:00'),
(3, 17, 2, '2024-03-18 11:00:00'),
(2, 17, 7, '2024-03-18 11:00:00'),
(1, 18, 11, '2024-04-01 13:30:00'),
(2, 19, 4, '2024-04-15 10:45:00'),
(1, 19, 9, '2024-04-15 10:45:00'),
(3, 20, 14, '2024-05-03 15:00:00'),
(1, 21, 1, '2024-05-20 12:15:00'),
(2, 21, 6, '2024-05-20 12:15:00'),
(1, 22, 13, '2024-06-07 14:30:00'),
(2, 23, 3, '2024-06-25 11:45:00'),
(1, 24, 8, '2024-07-10 09:00:00'),
(3, 24, 12, '2024-07-10 09:00:00');

-- Insert a new product with no orders
INSERT INTO product (name, description, price_in_cents, image_url, total_stock, category_id) VALUES
('New Gardening Shovel', 'A sturdy shovel for all your gardening needs', 2999, 'https://example.com/new-shovel.jpg', 50, 3);

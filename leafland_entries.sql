DELETE FROM product;
DELETE FROM category;
ALTER SEQUENCE category_id_seq RESTART WITH 1;
ALTER SEQUENCE product_id_seq RESTART WITH 1;
-- Insert Categories
INSERT INTO category (name, description) VALUES
('Plants', 'Live plants for your garden'),
('Soil', 'Various types of soil for planting'),
('Accessories', 'Garden tools and decorative items');

-- Insert Products
-- Plants
INSERT INTO product (name, description, price_in_cents, image_url, total_stock, category_id) VALUES
('Rose Bush', 'Beautiful red rose bush', 2999, 'https://example.com/rose.jpg', 50, 1),
('Tomato Plant', 'Heirloom tomato plant', 499, 'https://example.com/tomato.jpg', 100, 1),
('Lavender', 'Fragrant lavender plant', 799, 'https://example.com/lavender.jpg', 75, 1),
('Fern', 'Lush green fern', 1299, 'https://example.com/fern.jpg', 30, 1),
('Succulent', 'Low-maintenance succulent', 599, 'https://example.com/succulent.jpg', 200, 1);

-- Soil
INSERT INTO product (name, description, price_in_cents, image_url, total_stock, category_id) VALUES
('Potting Mix', 'All-purpose potting soil', 999, 'https://example.com/potting-mix.jpg', 500, 2),
('Compost', 'Rich organic compost', 1499, 'https://example.com/compost.jpg', 300, 2),
('Perlite', 'Soil additive for drainage', 699, 'https://example.com/perlite.jpg', 200, 2),
('Cactus Soil', 'Well-draining soil for succulents', 899, 'https://example.com/cactus-soil.jpg', 150, 2),
('Raised Bed Soil', 'Nutrient-rich soil for raised beds', 2499, 'https://example.com/raised-bed-soil.jpg', 100, 2);

-- Accessories
INSERT INTO product (name, description, price_in_cents, image_url, total_stock, category_id) VALUES
('Garden Gloves', 'Durable gardening gloves', 1299, 'https://example.com/gloves.jpg', 200, 3),
('Watering Can', '2-gallon plastic watering can', 1999, 'https://example.com/watering-can.jpg', 75, 3),
('Pruning Shears', 'Sharp bypass pruners', 2499, 'https://example.com/pruners.jpg', 100, 3),
('Garden Gnome', 'Decorative garden gnome', 3999, 'https://example.com/gnome.jpg', 25, 3),
('Trellis', 'Wooden garden trellis', 4999, 'https://example.com/trellis.jpg', 40, 3);

-- Insert Users
INSERT INTO "user" (name, address, email) VALUES
('John Doe', '123 Main St, Anytown, USA', 'john@example.com'),
('Jane Smith', '456 Oak Ave, Somewhere, USA', 'jane@example.com'),
('Bob Johnson', '789 Pine Rd, Nowhere, USA', 'bob@example.com'),
('Alice Brown', '321 Elm St, Anywhere, USA', 'alice@example.com'),
('Charlie Davis', '654 Maple Dr, Everywhere, USA', 'charlie@example.com'),
('Eva Wilson', '987 Birch Ln, Someplace, USA', 'eva@example.com'),
('Frank Miller', '147 Cedar Ct, Othertown, USA', 'frank@example.com'),
('Grace Lee', '258 Spruce Way, Thatplace, USA', 'grace@example.com'),
('Henry Taylor', '369 Ash Blvd, ThisCity, USA', 'henry@example.com'),
('Ivy Martinez', '741 Walnut St, Thatcity, USA', 'ivy@example.com'),
('Jack Robinson', '852 Cherry Ave, Othercity, USA', 'jack@example.com'),
('Karen White', '963 Pineapple Rd, Fruittown, USA', 'karen@example.com'),
('Liam Green', '159 Apple Ln, Veggieville, USA', 'liam@example.com'),
('Mia Clark', '753 Banana St, Tropicana, USA', 'mia@example.com'),
('Noah Turner', '951 Orange Ave, Citrusville, USA', 'noah@example.com');

-- Insert Orders
INSERT INTO "order" (payment_method, user_id) VALUES
('card', 1),
('ach', 2),
('card', 3),
('ach', 4),
('card', 1),
('ach', 5),
('card', 6),
('ach', 7),
('card', 8),
('ach', 2),
('card', 9),
('ach', 10);

-- Insert Order Products (example, adjust as needed)
INSERT INTO order_product (quantity, order_id, product_id) VALUES
(2, 1, 1),
(1, 1, 6),
(3, 2, 11),
(1, 3, 2),
(2, 3, 7),
(1, 4, 12),
(1, 5, 3),
(2, 6, 8),
(1, 7, 13),
(3, 8, 4),
(1, 9, 9),
(2, 10, 14),
(1, 11, 5),
(1, 12, 10),
(2, 12, 15);

-- Insert Reviews
INSERT INTO review (rating, comment, user_id, product_id) VALUES
(5, 'This rose bush is absolutely beautiful! The flowers are vibrant and its thriving in my garden.', 1, 1),
(4, 'Good quality potting mix. My plants are growing well, but its a bit pricey.', 2, 6),
(5, 'These garden gloves are fantastic! Durable and comfortable, perfect for all my gardening tasks.', 3, 11),
(3, 'The tomato plant is growing okay, but not as vigorously as I hoped. Might be my climate though.', 3, 2),
(5, 'Love this garden gnome! It adds such a whimsical touch to my flower bed. Well-made and weather-resistant.', 2, 14);

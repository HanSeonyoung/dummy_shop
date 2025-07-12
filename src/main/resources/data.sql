<<<<<<< HEAD
create table if not exists product (
	id INT,
	name VARCHAR(50),
	description VARCHAR(100),
	price VARCHAR(50),
	stock INT,
	category VARCHAR(50),
	image_url VARCHAR(50),
	created_at DATE
);
insert into product (id, name, description, price, stock, category, image_url, created_at) values (1, 'Sports Bottle', 'BPA-free sports bottle with flip-top lid.', 15.99, 94, 'Fitness', 'http://dummyimage.com/201x100.png/ff4444/ffffff', '2024-07-07T00:57:09Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (2, 'Luxury Memory Foam Mattress Topper', 'Adds extra comfort to your mattress for a better night''s sleep.', 129.99, 33, 'Home', 'http://dummyimage.com/138x100.png/5fa2dd/ffffff', '2024-09-26T12:07:43Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (3, 'Watercolor Paint Set', 'Vibrant watercolor paints that come with brushes and palettes.', 19.99, 50, 'Art Supplies', 'http://dummyimage.com/100x100.png/cc0000/ffffff', '2024-08-19T04:35:59Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (4, 'Cranberry Orange Oatmeal', 'Instant oatmeal flavored with cranberries and orange zest for breakfast.', 2.49, 53, 'Food - Breakfast', 'http://dummyimage.com/214x100.png/5fa2dd/ffffff', '2024-08-19T11:46:10Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (5, 'Tea Set with Infuser', 'Elegant tea set that includes an infuser for brewing.', 34.99, 60, 'Kitchen', 'http://dummyimage.com/184x100.png/ff4444/ffffff', '2024-10-26T13:54:14Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (6, 'Artisan Pickles', 'Tangy and crunchy dill pickles.', 2.49, 14, 'Food - Condiments', 'http://dummyimage.com/171x100.png/cc0000/ffffff', '2024-12-09T13:40:35Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (7, '3D Night Light', 'Color-changing 3D night light for kids'' rooms.', 19.99, 59, 'Home', 'http://dummyimage.com/136x100.png/dddddd/000000', '2024-09-30T20:11:47Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (8, 'Graphic Print Leggings', 'Trendy leggings with a unique graphic print, versatile for workouts and casual wear.', 29.99, 88, 'Clothing - Activewear', 'http://dummyimage.com/204x100.png/ff4444/ffffff', '2024-09-26T11:49:46Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (9, 'Reusable Food Storage Bags', 'Eco-friendly silicone bags for food storage and snacks.', 19.99, 72, 'Kitchen', 'http://dummyimage.com/208x100.png/ff4444/ffffff', '2024-11-19T18:08:54Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (10, 'Creative Puzzle Game', 'Challenging and fun puzzle game for all ages.', 19.99, 70, 'Toys', 'http://dummyimage.com/163x100.png/ff4444/ffffff', '2024-11-04T16:25:35Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (11, 'Flavored Instant Oatmeal', 'Quick oatmeal with various flavors', 2.99, 91, 'Food - Breakfast', 'http://dummyimage.com/161x100.png/dddddd/000000', '2025-04-22T02:46:04Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (12, 'Sriracha Hot Chili Sauce', 'Spicy and tangy chili sauce for adding heat to any dish.', 2.99, 84, 'Food - Condiments', 'http://dummyimage.com/198x100.png/cc0000/ffffff', '2025-01-14T13:53:51Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (13, 'Reusable Snack Bags', 'Eco-friendly reusable bags for snacks.', 14.99, 22, 'Kitchen', 'http://dummyimage.com/150x100.png/ff4444/ffffff', '2025-02-01T07:20:23Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (14, 'Portable Bluetooth Speaker', 'Compact Bluetooth speaker with rich sound quality.', 49.99, 68, 'Audio', 'http://dummyimage.com/199x100.png/dddddd/000000', '2024-09-08T07:48:17Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (15, 'Car Phone Mount', 'Adjustable phone mount for car dashboard.', 15.99, 36, 'Automotive', 'http://dummyimage.com/115x100.png/ff4444/ffffff', '2024-12-25T04:06:00Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (16, 'Eco-Friendly Disposable Plates', 'Compostable plates suitable for various occasions.', 22.99, 50, 'Kitchen', 'http://dummyimage.com/167x100.png/5fa2dd/ffffff', '2024-12-22T16:14:42Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (17, 'Electric Razor', 'Rechargeable electric razor for a smooth shave.', 59.99, 62, 'Health', 'http://dummyimage.com/191x100.png/5fa2dd/ffffff', '2025-01-18T16:22:47Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (18, 'Organic Quinoa Salad', 'A refreshing salad made with quinoa and seasonal veggies.', 5.99, 38, 'Food - Prepared Meals', 'http://dummyimage.com/134x100.png/cc0000/ffffff', '2025-02-12T04:23:42Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (19, 'Reusable Snack Bags', 'Eco-friendly reusable bags for snacks.', 14.99, 42, 'Kitchen', 'http://dummyimage.com/104x100.png/5fa2dd/ffffff', '2024-09-05T03:44:10Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (20, 'Miso Dressing', 'Flavorful dressing made with miso paste', 3.49, 34, 'Food - Dressings', 'http://dummyimage.com/159x100.png/5fa2dd/ffffff', '2025-05-22T22:08:36Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (21, 'Coconut Chia Pudding', 'Creamy chia pudding made with coconut milk and topped with mango.', 3.49, 81, 'Food - Dairy', 'http://dummyimage.com/234x100.png/ff4444/ffffff', '2025-01-10T03:58:17Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (22, 'Multi-Tool', 'Versatile multi-tool with 15 different functions.', 39.99, 89, 'Outdoor', 'http://dummyimage.com/232x100.png/5fa2dd/ffffff', '2025-06-21T05:45:03Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (23, 'Cotton Basic Tank', 'Essential cotton tank top, perfect for layering.', 14.99, 87, 'Clothing - Tops', 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', '2024-09-10T12:47:38Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (24, 'Magnetic Chess Set', 'Portable chess set with magnetic pieces for travel.', 19.99, 48, 'Toys', 'http://dummyimage.com/179x100.png/ff4444/ffffff', '2024-10-27T20:41:56Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (25, 'Pineapple Coconut Rice Mix', 'A flavorful blend of rice with tropical pineapple and coconut flavors.', 3.99, 43, 'Food - Grains', 'http://dummyimage.com/210x100.png/dddddd/000000', '2024-11-18T23:06:03Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (26, 'Portable Refrigerator Freezer', 'Compact fridge ideal for camping and road trips.', 299.99, 68, 'Outdoor', 'http://dummyimage.com/117x100.png/dddddd/000000', '2025-01-27T04:33:42Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (27, 'Sweet Chili Dipping Sauce', 'A sweet and spicy sauce ideal for spring rolls or chicken nuggets.', 2.99, 56, 'Food - Condiments', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', '2025-04-06T03:51:51Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (28, 'Handmade Soap Making Kit', 'Complete kit for crafting your own scented soaps.', 34.99, 30, 'Crafts', 'http://dummyimage.com/114x100.png/cc0000/ffffff', '2025-06-14T11:05:27Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (29, 'Balsamic Salad Dressing', 'Tangy and sweet balsamic dressing, perfect for salads.', 2.99, 93, 'Food - Deli', 'http://dummyimage.com/220x100.png/ff4444/ffffff', '2025-04-15T21:49:26Z');
insert into product (id, name, description, price, stock, category, image_url, created_at) values (30, 'Outdoor Adventure Backpack', 'Durable backpack for hiking or travel.', 59.99, 89, 'Outdoor', 'http://dummyimage.com/159x100.png/cc0000/ffffff', '2024-11-02T11:04:21Z');
=======
-- create table if not exists product (
-- 	id INT,
-- 	name VARCHAR(50),
-- 	description VARCHAR(100),
-- 	price VARCHAR(50),
-- 	stock_quantity INT,
-- 	category VARCHAR(50),
-- 	image_url VARCHAR(50),
-- 	created_at DATE
-- );
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (1, 'Sports Bottle', 'BPA-free sports bottle with flip-top lid.', 15.99, 94, 'Fitness', 'http://dummyimage.com/201x100.png/ff4444/ffffff', '2024-07-07T00:57:09Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (2, 'Luxury Memory Foam Mattress Topper', 'Adds extra comfort to your mattress for a better night''s sleep.', 129.99, 33, 'Home', 'http://dummyimage.com/138x100.png/5fa2dd/ffffff', '2024-09-26T12:07:43Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (3, 'Watercolor Paint Set', 'Vibrant watercolor paints that come with brushes and palettes.', 19.99, 50, 'Art Supplies', 'http://dummyimage.com/100x100.png/cc0000/ffffff', '2024-08-19T04:35:59Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (4, 'Cranberry Orange Oatmeal', 'Instant oatmeal flavored with cranberries and orange zest for breakfast.', 2.49, 53, 'Food - Breakfast', 'http://dummyimage.com/214x100.png/5fa2dd/ffffff', '2024-08-19T11:46:10Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (5, 'Tea Set with Infuser', 'Elegant tea set that includes an infuser for brewing.', 34.99, 60, 'Kitchen', 'http://dummyimage.com/184x100.png/ff4444/ffffff', '2024-10-26T13:54:14Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (6, 'Artisan Pickles', 'Tangy and crunchy dill pickles.', 2.49, 14, 'Food - Condiments', 'http://dummyimage.com/171x100.png/cc0000/ffffff', '2024-12-09T13:40:35Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (7, '3D Night Light', 'Color-changing 3D night light for kids'' rooms.', 19.99, 59, 'Home', 'http://dummyimage.com/136x100.png/dddddd/000000', '2024-09-30T20:11:47Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (8, 'Graphic Print Leggings', 'Trendy leggings with a unique graphic print, versatile for workouts and casual wear.', 29.99, 88, 'Clothing - Activewear', 'http://dummyimage.com/204x100.png/ff4444/ffffff', '2024-09-26T11:49:46Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (9, 'Reusable Food Storage Bags', 'Eco-friendly silicone bags for food storage and snacks.', 19.99, 72, 'Kitchen', 'http://dummyimage.com/208x100.png/ff4444/ffffff', '2024-11-19T18:08:54Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (10, 'Creative Puzzle Game', 'Challenging and fun puzzle game for all ages.', 19.99, 70, 'Toys', 'http://dummyimage.com/163x100.png/ff4444/ffffff', '2024-11-04T16:25:35Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (11, 'Flavored Instant Oatmeal', 'Quick oatmeal with various flavors', 2.99, 91, 'Food - Breakfast', 'http://dummyimage.com/161x100.png/dddddd/000000', '2025-04-22T02:46:04Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (12, 'Sriracha Hot Chili Sauce', 'Spicy and tangy chili sauce for adding heat to any dish.', 2.99, 84, 'Food - Condiments', 'http://dummyimage.com/198x100.png/cc0000/ffffff', '2025-01-14T13:53:51Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (13, 'Reusable Snack Bags', 'Eco-friendly reusable bags for snacks.', 14.99, 22, 'Kitchen', 'http://dummyimage.com/150x100.png/ff4444/ffffff', '2025-02-01T07:20:23Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (14, 'Portable Bluetooth Speaker', 'Compact Bluetooth speaker with rich sound quality.', 49.99, 68, 'Audio', 'http://dummyimage.com/199x100.png/dddddd/000000', '2024-09-08T07:48:17Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (15, 'Car Phone Mount', 'Adjustable phone mount for car dashboard.', 15.99, 36, 'Automotive', 'http://dummyimage.com/115x100.png/ff4444/ffffff', '2024-12-25T04:06:00Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (16, 'Eco-Friendly Disposable Plates', 'Compostable plates suitable for various occasions.', 22.99, 50, 'Kitchen', 'http://dummyimage.com/167x100.png/5fa2dd/ffffff', '2024-12-22T16:14:42Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (17, 'Electric Razor', 'Rechargeable electric razor for a smooth shave.', 59.99, 62, 'Health', 'http://dummyimage.com/191x100.png/5fa2dd/ffffff', '2025-01-18T16:22:47Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (18, 'Organic Quinoa Salad', 'A refreshing salad made with quinoa and seasonal veggies.', 5.99, 38, 'Food - Prepared Meals', 'http://dummyimage.com/134x100.png/cc0000/ffffff', '2025-02-12T04:23:42Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (19, 'Reusable Snack Bags', 'Eco-friendly reusable bags for snacks.', 14.99, 42, 'Kitchen', 'http://dummyimage.com/104x100.png/5fa2dd/ffffff', '2024-09-05T03:44:10Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (20, 'Miso Dressing', 'Flavorful dressing made with miso paste', 3.49, 34, 'Food - Dressings', 'http://dummyimage.com/159x100.png/5fa2dd/ffffff', '2025-05-22T22:08:36Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (21, 'Coconut Chia Pudding', 'Creamy chia pudding made with coconut milk and topped with mango.', 3.49, 81, 'Food - Dairy', 'http://dummyimage.com/234x100.png/ff4444/ffffff', '2025-01-10T03:58:17Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (22, 'Multi-Tool', 'Versatile multi-tool with 15 different functions.', 39.99, 89, 'Outdoor', 'http://dummyimage.com/232x100.png/5fa2dd/ffffff', '2025-06-21T05:45:03Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (23, 'Cotton Basic Tank', 'Essential cotton tank top, perfect for layering.', 14.99, 87, 'Clothing - Tops', 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', '2024-09-10T12:47:38Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (24, 'Magnetic Chess Set', 'Portable chess set with magnetic pieces for travel.', 19.99, 48, 'Toys', 'http://dummyimage.com/179x100.png/ff4444/ffffff', '2024-10-27T20:41:56Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (25, 'Pineapple Coconut Rice Mix', 'A flavorful blend of rice with tropical pineapple and coconut flavors.', 3.99, 43, 'Food - Grains', 'http://dummyimage.com/210x100.png/dddddd/000000', '2024-11-18T23:06:03Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (26, 'Portable Refrigerator Freezer', 'Compact fridge ideal for camping and road trips.', 299.99, 68, 'Outdoor', 'http://dummyimage.com/117x100.png/dddddd/000000', '2025-01-27T04:33:42Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (27, 'Sweet Chili Dipping Sauce', 'A sweet and spicy sauce ideal for spring rolls or chicken nuggets.', 2.99, 56, 'Food - Condiments', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', '2025-04-06T03:51:51Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (28, 'Handmade Soap Making Kit', 'Complete kit for crafting your own scented soaps.', 34.99, 30, 'Crafts', 'http://dummyimage.com/114x100.png/cc0000/ffffff', '2025-06-14T11:05:27Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (29, 'Balsamic Salad Dressing', 'Tangy and sweet balsamic dressing, perfect for salads.', 2.99, 93, 'Food - Deli', 'http://dummyimage.com/220x100.png/ff4444/ffffff', '2025-04-15T21:49:26Z');
insert into product (id, name, description, price, stock_quantity, category, image_url, created_at) values (30, 'Outdoor Adventure Backpack', 'Durable backpack for hiking or travel.', 59.99, 89, 'Outdoor', 'http://dummyimage.com/159x100.png/cc0000/ffffff', '2024-11-02T11:04:21Z');
>>>>>>> origin/main
--members
--create table if not exist member (
--	id INT,
--	username VARCHAR(50),
--	email VARCHAR(50),
--	password VARCHAR(50),
--	name VARCHAR(50),
--	phone VARCHAR(50),
--	address VARCHAR(50),
--	regdate DATE
--);
--insert into members (id, username, email, password, name, phone, address, regdate) values (1, 'psebrook0', 'pjiroutek0@storify.com', 'iX9=<u+PnTu', 'Priscilla', '520-871-9277', '427 Sage Point', '2025-01-01T22:24:36Z');
--insert into members (id, username, email, password, name, phone, address, regdate) values (2, 'cpolly1', 'ckenneway1@fotki.com', 'nA0,RWbk@`p', 'Carlota', '201-777-1376', '28061 Lighthouse Bay Plaza', '2024-09-26T07:58:32Z');
--insert into members (id, username, email, password, name, phone, address, regdate) values (3, 'bjanu2', 'byoell2@exblog.jp', 'kV7|n+Vv`W8ec', 'Bertine', '129-256-2993', '83 South Lane', '2024-10-27T03:01:52Z');
--insert into members (id, username, email, password, name, phone, address, regdate) values (4, 'xpechell3', 'xpenke3@usatoday.com', 'nA5,T&rSQai&G"', 'Ximenes', '523-831-2118', '74930 Redwing Court', '2025-05-06T13:20:34Z');
--insert into members (id, username, email, password, name, phone, address, regdate) values (5, 'jferrettini4', 'jstone4@etsy.com', 'mV9,fy1|2ko66', 'Jillayne', '974-260-8900', '2 Mallory Center', '2024-09-28T22:03:20Z');
--장바구니 기능 테스트
<<<<<<< HEAD
INSERT INTO carts (session_id, user_id, product_id, quantity) VALUES (null, 1, 5, 2), (null, 1, 10, 1);
=======
INSERT INTO carts (session_id, user_id, product_id, quantity) VALUES (null, 1, 5, 2), (null, 1, 10, 1);

>>>>>>> origin/main

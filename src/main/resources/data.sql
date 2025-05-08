CREATE TABLE IF NOT EXISTS products (
    id UUID PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DOUBLE,
    brand VARCHAR(100),
    category VARCHAR(50) CHECK (category IN (
            'ELECTRONICS',
            'FASHION',
            'BOOKS',
            'HOME_APPLIANCES',
            'SPORTS',
            'BEAUTY',
            'TOYS',
            'AUTOMOTIVE',
            'GROCERY',
            'HEALTH'
        )),
    image_url TEXT
);



INSERT INTO products (id, name, description, price, brand, category, image_url)
SELECT * FROM (
    SELECT RANDOM_UUID(), 'iPhone 15 Pro Max', 'Flagship Apple smartphone with A17 chip and 256GB storage.', 1199.99, 'Apple', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'iPad Air 64GB', 'Lightweight tablet with 10.9-inch Liquid Retina display.', 599.99, 'Apple', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'MacBook Air M3', 'Ultra-thin laptop powered by Apple M3 chip.', 1299.99, 'Apple', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Samsung Galaxy S24 Ultra', 'High-end Android phone with quad-camera setup.', 1399.99, 'Samsung', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Google Pixel 8 Pro', 'Google flagship phone with amazing AI features.', 999.99, 'Google', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Sony WH-1000XM5', 'Industry-leading noise cancelling headphones.', 399.99, 'Sony', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Dell XPS 13', 'Premium ultrabook with 12th gen Intel processor.', 1099.99, 'Dell', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Lenovo ThinkPad X1', 'Business laptop with high durability and performance.', 1299.99, 'Lenovo', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'HP Envy x360', 'Convertible 2-in-1 touchscreen laptop.', 899.99, 'HP', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'ASUS ROG Strix', 'Gaming laptop with NVIDIA RTX 4070.', 1699.99, 'ASUS', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL

    SELECT RANDOM_UUID(), 'Canon EOS R50', 'Mirrorless camera with 24MP sensor.', 799.99, 'Canon', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Nike Air Force 1', 'Iconic basketball sneakers.', 109.99, 'Nike', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Adidas Ultraboost', 'Comfortable running shoes.', 139.99, 'Adidas', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Levis 511 Slim Jeans', 'Classic slim-fit jeans.', 59.99, 'Levis', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Uniqlo Cotton T-Shirt', 'Affordable and soft cotton tee.', 14.99, 'Uniqlo', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'H&M Hoodie', 'Warm fleece hoodie for daily wear.', 29.99, 'H&M', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Zara Slim Shirt', 'Stylish formal slim fit shirt.', 39.99, 'Zara', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Puma Running Shorts', 'Breathable shorts for active lifestyle.', 24.99, 'Puma', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Under Armour Sports Bra', 'Supportive sports bra for workouts.', 34.99, 'Under Armour', 'FASHION', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Ray-Ban Wayfarer', 'Classic sunglasses design.', 149.99, 'Ray-Ban', 'FASHION', 'https://picsum.photos/500' UNION ALL

    SELECT RANDOM_UUID(), 'The Great Gatsby', 'A novel by F. Scott Fitzgerald.', 10.99, 'Penguin', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Atomic Habits', 'Best-selling self-help book by James Clear.', 16.99, 'Penguin', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), '1984', 'Classic dystopian novel by George Orwell.', 9.99, 'Harvill Secker', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Clean Code', 'A Handbook of Agile Software Craftsmanship.', 45.99, 'Prentice Hall', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Harry Potter and the Sorcerers Stone', 'The first book in the Harry Potter series.', 12.99, 'Bloomsbury', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'The Alchemist', 'Inspirational story by Paulo Coelho.', 14.99, 'HarperOne', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'To Kill a Mockingbird', 'Pulitzer Prize-winning novel.', 13.99, 'HarperCollins', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Becoming', 'Michelle Obamas memoir.', 18.99, 'Crown', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Sapiens', 'A Brief History of Humankind by Yuval Noah Harari.', 19.99, 'Harper', 'BOOKS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'The Lean Startup', 'Book on modern entrepreneurship.', 17.99, 'Crown Business', 'BOOKS', 'https://picsum.photos/500' UNION ALL

    SELECT RANDOM_UUID(), 'Logitech MX Master 3S', 'Ergonomic wireless mouse for professionals.', 99.99, 'Logitech', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Keychron K8', 'Wireless mechanical keyboard with hot-swappable keys.', 89.99, 'Keychron', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Kindle Paperwhite', 'Waterproof e-reader with glare-free screen.', 139.99, 'Amazon', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Fire TV Stick 4K', 'Media streaming device for your TV.', 49.99, 'Amazon', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Apple Watch Series 9', 'Smartwatch with health and fitness tracking.', 399.99, 'Apple', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Fitbit Charge 6', 'Advanced fitness and health tracker.', 159.99, 'Fitbit', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'GoPro HERO12', 'Action camera with 5.3K video recording.', 499.99, 'GoPro', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'DJI Mini 4 Pro', 'Compact drone with 4K camera.', 749.99, 'DJI', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Anker PowerCore 20K', 'Portable charger with fast charging support.', 49.99, 'Anker', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Bose QuietComfort Earbuds II', 'Noise cancelling earbuds.', 299.99, 'Bose', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL

    SELECT RANDOM_UUID(), 'Samsung Smart TV 55"', '4K UHD Smart TV with HDR.', 649.99, 'Samsung', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'LG OLED CX 65"', 'Premium OLED TV with perfect blacks.', 1799.99, 'LG', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Amazon Echo Dot', 'Smart speaker with Alexa.', 49.99, 'Amazon', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Philips Hue Starter Kit', 'Smart lighting kit with 3 bulbs.', 119.99, 'Philips', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'TP-Link WiFi 6 Router', 'High-speed wireless router with AX1800.', 89.99, 'TP-Link', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Razer DeathAdder V2', 'Gaming mouse with high DPI sensor.', 69.99, 'Razer', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'SteelSeries Apex Pro', 'Mechanical keyboard with adjustable switches.', 199.99, 'SteelSeries', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'Corsair iCUE 4000X', 'ATX mid-tower case with RGB fans.', 124.99, 'Corsair', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'MSI MAG B550 Tomahawk', 'Gaming motherboard for AMD Ryzen.', 179.99, 'MSI', 'ELECTRONICS', 'https://picsum.photos/500' UNION ALL
    SELECT RANDOM_UUID(), 'WD Black SN850 1TB', 'High-speed NVMe SSD for gaming.', 129.99, 'Western Digital', 'ELECTRONICS', 'https://picsum.photos/500') AS temp
WHERE NOT EXISTS (SELECT 1 FROM products);





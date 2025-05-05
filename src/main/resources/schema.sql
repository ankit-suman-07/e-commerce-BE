CREATE TABLE products (
    id UUID PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DOUBLE,
    brand VARCHAR(100),
    category VARCHAR(50) CHECK (category IN ('ELECTRONICS', 'FASHION', 'BOOKS')),
    image_url TEXT
);
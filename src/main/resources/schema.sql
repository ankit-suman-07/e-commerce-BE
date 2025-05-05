CREATE TABLE products (
    id UUID PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DOUBLE,
    brand VARCHAR(100),
    category VARCHAR(50),
    image_url TEXT
);

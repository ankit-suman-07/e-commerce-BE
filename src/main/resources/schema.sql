CREATE TABLE products (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
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
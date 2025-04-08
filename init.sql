CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    role ENUM('admin', 'user') DEFAULT 'user'
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    image VARCHAR(255)
);

INSERT INTO users (username, email, password, role) VALUES ('admin', 'admin@example.com', 'admin123', 'admin');
INSERT INTO products (name, description, price, image) VALUES 
    ('Laptop', 'High-performance laptop', 999.99, NULL),
    ('Phone', 'Latest smartphone', 499.99, NULL),
    ('Headphones', 'Noise-cancelling headphones', 89.99, NULL),
    ('Tablet', 'Portable tablet with stylus', 299.99, NULL),
    ('Smartwatch', 'Fitness and notification tracker', 199.99, NULL),
    ('Camera', 'High-resolution digital camera', 599.99, NULL),
    ('Speaker', 'Bluetooth portable speaker', 129.99, NULL);
-- First, create the products table if it doesn't exist
CREATE TABLE IF NOT EXISTS products (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    inventory INTEGER NOT NULL DEFAULT 0,
    category TEXT NOT NULL,
    image_url TEXT NOT NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index if it doesn't exist
CREATE INDEX IF NOT EXISTS idx_products_id ON products(id);

-- Insert sample products
INSERT INTO products (id, name, description, price, inventory, category, image_url) VALUES
('p1', 'Gaming Laptop', 'High-performance gaming laptop with RTX 4080', 1499.99, 10, 'Electronics', '/Image1'),
('p2', 'Mechanical Keyboard', 'RGB mechanical keyboard with blue switches', 129.99, 25, 'Accessories', '/Image2'),
('p3', 'Wireless Mouse', 'Ergonomic wireless gaming mouse', 79.99, 30, 'Accessories', '/Image3'),
('p4', 'Gaming Monitor', '27-inch 4K HDR gaming monitor', 599.99, 15, 'Electronics', '/Image4'),
('p5', 'Gaming Headset', 'Surround sound gaming headset with noise cancellation', 149.99, 20, 'Accessories', '/Image5');

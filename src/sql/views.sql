-- Auto-generated: views — views v1551
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_1551 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_1551_name
    ON views_—_views_1551(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_1551_created
    ON views_—_views_1551(created_at DESC);

-- Seed data
INSERT INTO views_—_views_1551 (name, email)
VALUES
    ('item_0', 'val_0_1551'),
    ('item_1', 'val_1_1551'),
    ('item_2', 'val_2_1551'),
    ('item_3', 'val_3_1551'),
    ('item_4', 'val_4_1551'),
    ('item_5', 'val_5_1551'),
    ('item_6', 'val_6_1551');

-- View
CREATE OR REPLACE VIEW v_views_—_views_1551_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_1551
GROUP BY name
ORDER BY total DESC;

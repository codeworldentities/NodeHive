-- Auto-generated: view creation v3189
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_3189 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_3189_name
    ON view_creation_3189(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_3189_created
    ON view_creation_3189(created_at DESC);

-- Seed data
INSERT INTO view_creation_3189 (name, status)
VALUES
    ('item_0', 'val_0_3189'),
    ('item_1', 'val_1_3189'),
    ('item_2', 'val_2_3189'),
    ('item_3', 'val_3_3189'),
    ('item_4', 'val_4_3189'),
    ('item_5', 'val_5_3189'),
    ('item_6', 'val_6_3189'),
    ('item_7', 'val_7_3189'),

-- View
CREATE OR REPLACE VIEW v_view_creation_3189_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_3189
GROUP BY name
ORDER BY total DESC;

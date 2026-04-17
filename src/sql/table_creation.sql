-- Auto-generated: table creation v7080
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_7080 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_7080_name
    ON table_creation_7080(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_7080_created
    ON table_creation_7080(created_at DESC);

-- Seed data
INSERT INTO table_creation_7080 (name, metadata)
VALUES
    ('item_0', 'val_0_7080'),
    ('item_1', 'val_1_7080'),
    ('item_2', 'val_2_7080'),
    ('item_3', 'val_3_7080'),
    ('item_4', 'val_4_7080'),
    ('item_5', 'val_5_7080'),
    ('item_6', 'val_6_7080'),
    ('item_7', 'val_7_7080'),

-- View
CREATE OR REPLACE VIEW v_table_creation_7080_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_7080
GROUP BY name
ORDER BY total DESC;

-- Auto-generated: index optimization v2038
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_2038 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_2038_name
    ON index_optimization_2038(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_2038_created
    ON index_optimization_2038(created_at DESC);

-- Seed data
INSERT INTO index_optimization_2038 (name, email)
VALUES
    ('item_0', 'val_0_2038'),
    ('item_1', 'val_1_2038'),
    ('item_2', 'val_2_2038'),
    ('item_3', 'val_3_2038'),
    ('item_4', 'val_4_2038'),
    ('item_5', 'val_5_2038'),
    ('item_6', 'val_6_2038'),
    ('item_7', 'val_7_2038'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_2038_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_2038
GROUP BY name
ORDER BY total DESC;

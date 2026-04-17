-- Auto-generated: schema — database schema definition v7665
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_7665 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7665_name
    ON schema_—_database_schema_definition_7665(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7665_created
    ON schema_—_database_schema_definition_7665(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_7665 (name, description)
VALUES
    ('item_0', 'val_0_7665'),
    ('item_1', 'val_1_7665'),
    ('item_2', 'val_2_7665'),
    ('item_3', 'val_3_7665'),
    ('item_4', 'val_4_7665'),
    ('item_5', 'val_5_7665'),
    ('item_6', 'val_6_7665'),
    ('item_7', 'val_7_7665'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_7665_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_7665
GROUP BY name
ORDER BY total DESC;

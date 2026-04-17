-- Auto-generated: procedures — procedures v837
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_837 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    description TEXT,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_837_name
    ON procedures_—_procedures_837(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_837_created
    ON procedures_—_procedures_837(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_837 (name, priority)
VALUES
    ('item_0', 'val_0_837'),
    ('item_1', 'val_1_837'),
    ('item_2', 'val_2_837'),
    ('item_3', 'val_3_837'),
    ('item_4', 'val_4_837'),
    ('item_5', 'val_5_837'),
    ('item_6', 'val_6_837'),
    ('item_7', 'val_7_837'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_837_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_837
GROUP BY name
ORDER BY total DESC;

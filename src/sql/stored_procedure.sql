-- Auto-generated: stored procedure v9962
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_9962 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_9962_name
    ON stored_procedure_9962(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_9962_created
    ON stored_procedure_9962(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_9962 (name, description)
VALUES
    ('item_0', 'val_0_9962'),
    ('item_1', 'val_1_9962'),
    ('item_2', 'val_2_9962'),
    ('item_3', 'val_3_9962'),
    ('item_4', 'val_4_9962'),
    ('item_5', 'val_5_9962');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_9962_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_9962
GROUP BY name
ORDER BY total DESC;

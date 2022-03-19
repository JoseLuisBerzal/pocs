CREATE TABLE IF NOT EXISTS example (
	id INTEGER NOT NULL,
	code INTEGER NULL,
	message VARCHAR(255) NULL
);

COMMENT ON COLUMN example.id IS 'Record identifier';
COMMENT ON COLUMN example.code IS 'Code';
COMMENT ON COLUMN example.message IS 'Text';
;
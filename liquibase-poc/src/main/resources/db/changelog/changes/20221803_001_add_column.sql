--liquibase formatted sql

--changeset Berzal:20221803_001
--comment:Creation table example 

--precondition onFail=MARK_RAN onError=MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM example 
ALTER TABLE example ADD error VARCHAR(255) NULL;

COMMENT ON COLUMN example.error IS 'Error text';
;
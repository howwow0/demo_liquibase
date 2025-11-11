--liquibase formatted sql

--changeset HowWow:add-user-status-roles-3
ALTER TABLE users
    ADD COLUMN is_active BOOLEAN NOT NULL DEFAULT true,
    ADD COLUMN role VARCHAR(20) NOT NULL DEFAULT 'USER',
    ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

--rollback ALTER TABLE users DROP COLUMN IF EXISTS is_active;
--rollback ALTER TABLE users DROP COLUMN IF EXISTS role;
--rollback ALTER TABLE users DROP COLUMN IF EXISTS updated_at;
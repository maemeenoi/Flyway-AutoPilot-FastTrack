-- B001__baseline.sql
-- Baseline setup for PostgreSQL Autopilot

CREATE SCHEMA IF NOT EXISTS customers;
CREATE SCHEMA IF NOT EXISTS logistics;
CREATE SCHEMA IF NOT EXISTS operation;
CREATE SCHEMA IF NOT EXISTS sales;

-- Simple baseline table in sales schema
CREATE TABLE IF NOT EXISTS sales.customers (
    customer_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100)
);

-- Example baseline view
CREATE OR REPLACE VIEW sales.customer_summary AS
SELECT c.customer_id, c.company_name, c.contact_name
FROM sales.customers c;

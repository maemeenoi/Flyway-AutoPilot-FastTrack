-- U002__UNDO-Welcome.sql
-- Undo for Welcome migration

DELETE FROM sales.customers
WHERE company_name = 'Redgate Autopilot PG';

-- View tables from the KinetEco database
SELECT * 
FROM manufacturing.products;

SELECT * 
FROM human_resources.employees;

-- Impersonate the hr_manager
SET ROLE hr_manager;

-- Switch permissions back to posgres super user
RESET ROLE;

-- Give hr_manager permissions in database
GRANT USAGE 
ON SCHEMA human_resources 
TO hr_manager;

GRANT SELECT 
ON ALL TABLES 
IN SCHEMA human_resources 
TO hr_manager;

GRANT ALL 
ON ALL TABLES 
IN SCHEMA human_resources 
TO hr_manager;

-- Remove the hr_manager role from Postgres Server
RESET ROLE;

REVOKE ALL 
ON ALL TABLES 
IN SCHEMA human_resources 
FROM hr_manager;

REVOKE USAGE
ON SCHEMA human_resources 
FROM hr_manager;

DROP ROLE hr_manager;

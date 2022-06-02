CREATE OR REPLACE VIEW v_customers AS
    SELECT first_name, 
           last_name
    FROM customers
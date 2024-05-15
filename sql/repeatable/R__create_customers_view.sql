CREATE OR REPLACE VIEW v_customers AS
    SELECT first_name, 
           last_name,
           middle_name
    FROM customers
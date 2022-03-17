--CREATE OR REPLACE VIEW adres AS 
--        SELECT  customer.first_name, customer.last_name,customer.birthday,customer.identity_number,customer_adress.country,customer_adress.city,customer_adress.street,customer_adress.building_info,customer_adress.door_number,customer_adress.zip_code
--        FROM customer_adress
--        INNER JOIN customer
--        ON customer.customer_id = customer_adress.customer_id;
--        

select * from adres
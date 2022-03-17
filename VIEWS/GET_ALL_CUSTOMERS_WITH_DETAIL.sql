CREATE OR REPLACE VIEW GET_ALL_CUSTOMERS_WITH_DETAIL AS
    SELECT CUSTOMER.first_name, CUSTOMER.last_name, CUSTOMER.birthday, CUSTOMER.identity_number, CUSTOMER_LOGIN.email, CUSTOMER_LOGIN.created_date 
    FROM CUSTOMER 
    INNER JOIN customer_login
    ON customer.login_id = customer_login.login_id;
    
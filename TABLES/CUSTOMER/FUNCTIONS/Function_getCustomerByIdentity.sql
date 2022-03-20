CREATE OR REPLACE FUNCTION getCustomerByIdentityNumber (
    p_identity customer.identity_number%TYPE
) RETURN NUMBER IS
    c_id NUMBER;
BEGIN
    SELECT
        customer.customer_id
    INTO c_id
    FROM
        customer
    WHERE
        customer.identity_number= p_identity;

    RETURN c_id;
END;
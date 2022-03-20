CREATE OR REPLACE FUNCTION getcustomerbyemail (
    p_email customer_login.email%TYPE
) RETURN NUMBER IS
    c_id NUMBER;
BEGIN
    SELECT
        customer_login.login_id
    INTO c_id
    FROM
        customer_login
    WHERE
        customer_login.email = p_email;

    RETURN c_id;
END;
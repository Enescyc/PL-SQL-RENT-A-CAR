
CREATE OR REPLACE PROCEDURE insertCustomerLogin(
	  
	   p_email IN customer_login.email%TYPE,
	   p_password IN customer_login.CUSTOMER_PASSWORD%TYPE)
IS
BEGIN

  INSERT INTO customer_login ("EMAIL", "CUSTOMER_PASSWORD")
  VALUES (p_email, p_password);
  COMMIT;
  
  dbms_output.put_line('EMAIL:'|| p_email ); 
  dbms_output.put_line('PASSWORD:'|| p_email ); 
  dbms_output.put_line('KULLANICI BASARIYLA EKLENDI'); 

END;
/
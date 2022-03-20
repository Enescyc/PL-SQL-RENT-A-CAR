

CREATE OR REPLACE FUNCTION getemployeeidbyemail(p_email employee_login.employee_email%TYPE)
   RETURN NUMBER
   IS
   employee_id  NUMBER :=0;
BEGIN 
  SELECT employee_login_id INTO employee_id
        FROM employee_login
        WHERE employee_login.employee_email=p_email;
        
        RETURN employee_id;
END;

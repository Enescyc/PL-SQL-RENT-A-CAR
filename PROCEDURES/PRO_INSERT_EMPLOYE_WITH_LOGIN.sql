CREATE OR REPLACE PROCEDURE INSERT_EMPLOYEE

(
    p_email         in employee_login.employee_email%type,
    p_password      in employee_login.employee_password%type,
    p_firstname     in employee.first_name%type,
    p_lastname      in employee.last_name%type,
    p_b?rthday      in employee.birthday%type,
    p_team          in employee.team%type
)
is
    p_id number;

begin
    insert into employee_login ("EMPLOYEE_EMAIL","EMPLOYEE_PASSWORD")
    VALUES (p_email,p_password);
    
    p_id :=getemployeeidbyemail(p_email);
    
    insert into employee ("FIRST_NAME","LAST_NAME","BIRTHDAY","TEAM","LOGIN_ID")
    VALUES (p_firstname,p_lastname,p_birthday,p_team,p_id);
    
    
    
    DBMS_OUTPUT.PUT_LINE('FIRSTNAME :' || p_firstname);
    DBMS_OUTPUT.PUT_LINE('LASTNAME :' || p_lastname);
    DBMS_OUTPUT.PUT_LINE('BIRTHDAY :' || p_b?rthday);
    DBMS_OUTPUT.PUT_LINE('TEAM :' || p_team);
    DBMS_OUTPUT.PUT_LINE('EMAIL :' || p_email);
    

end;
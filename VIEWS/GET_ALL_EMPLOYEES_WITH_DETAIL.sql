CREATE OR REPLACE VIEW GET_ALL_EMPLOYEES_WITH_DETAIL AS
    SELECT employee.first_name,employee.last_name,employee.birthday,employee.team , employee_login.employee_email
    FROM EMPLOYEE
    INNER JOIN EMPLOYEE_LOGIN
    ON EMPLOYEE.login_id = employee_login.employee_login_id;
    


DECLARE
    emp_name VARCHAR2(50); 
BEGIN
dbms_output.put_line('enter the name of employee');
emp_name:=&emp_name;
    Proj_emp(emp_name);
END;
/
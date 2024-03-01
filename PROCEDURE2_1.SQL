DECLARE
CURSOR emplist IS SELECT empname AS emp_name FROM
employee;
emp emplist%ROWTYPE;
BEGIN
OPEN emplist;
LOOP
FETCH emplist INTO emp;
EXIT WHEN emplist%NOTFOUND;
palindrome(emp.emp_name);
END LOOP;
CLOSE emplist;
END;
/
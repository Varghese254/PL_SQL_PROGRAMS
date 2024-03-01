CREATE OR REPLACE PROCEDURE Proj_emp(emp_name in varchar2)
AS
CURSOR emplist IS
SELECT e.empname as empname,e.empno,p.projno as
projno,p.projname as projname FROM employee e,project
p,emp_proj ep WHERE ep.projno=p.projno AND e.empno=ep.empno
AND e.empname=emp_name;
emp emplist%ROWTYPE;
BEGIN
OPEN emplist;
FETCH emplist iNTO emp;
DBMS_OUTPUT.PUT_LINE('Project Details for Employee:'
||emp_name);
DBMS_OUTPUT.PUT_LINE('-------------------------');
WHILE emplist%FOUND LOOP
DBMS_OUTPUT.PUT_LINE(' ');
DBMS_OUTPUT.PUT_LINE('NAME: '|| emp.empname);
DBMS_OUTPUT.PUT_LINE('PROJECT NO:'|| emp.projno);
DBMS_OUTPUT.PUT_LINE('PROJECT NAME:'||
emp.projname);
DBMS_OUTPUT.PUT_LINE(' ');
FETCH emplist INTO emp;
END LOOP;
CLOSE emplist;
END;
/
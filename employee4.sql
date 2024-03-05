DECLARE
CURSOR c_analyst IS
SELECT empno,salary FROM employee WHERE job='ANALYST';
v_empno employee.empno%TYPE;
v_sal employee.salary%TYPE;
v_raise NUMBER;
BEGIN
OPEN c_analyst;
FETCH c_analyst into v_empno,v_sal;
WHILE c_analyst%found
LOOP
v_raise:=v_sal*0.15;
UPDATE employee SET salary=salary+v_raise WHERE
empno=v_empno;
insert into EMPLOYEERAISE1 values(v_empno,SYSDATE,V_raise);
fetch c_analyst into v_empno,v_sal;
END LOOP;
CLOSE c_analyst;
END;
/
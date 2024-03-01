declare
cursor empcur2 is select empno,salary from employee where job='ANALYST';
empno employee.empno%type;
esal employee.salary%type;
ramt number;
begin
open empcur2;
fetch empcur2 into empno,esal;
while empcur2%found
loop
	ramt:= esal * 0.15;
	update employee set salary = salary + ramt where empno = empno;
	insert into emp_raise values(empno,sysdate,ramt);
	fetch empcur2 into empno,esal;
end loop;
close empcur2 ;
end;
/
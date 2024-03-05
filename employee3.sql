declare
cursor empcur is
select empname,deptno,salary from employee order by salary desc;
ename employee.empname%type; 
deptno employee.deptno%type;
sal employee.salary%type;
begin
open empcur;
fetch empcur into ename,deptno,sal;
while empcur%found and  empcur%rowcount<=5
loop
dbms_output.put_line('empname'|| ename);
dbms_output.put_line('deptno'|| deptno);
dbms_output.put_line('salary'|| sal);
end loop;
close empcur;
end;
/




	




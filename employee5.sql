
create or replace procedure proc_emp(empname in  varchar2)
as
cursor emplist is
select e.empno,p.projno,e.empname,p.projname from employee e inner join emp_proj ep on e.empno=ep.empno inner join project p on p.projno=ep.projno;
emp emplist%rowtype;
begin
open emplist;
fetch emplist into emp;
loop
dbms_output.put_line('project details for employee:'||empname);
dbms_output.put_line('employee no:'||emp.empno);
dbms_output.put_line('project no:'||emp.projno);
dbms_output.put_line('project name:'||emp.projname);
fetch emplist into emp;
end loop;
close emplist;
end;
/


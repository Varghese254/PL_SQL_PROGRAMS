create or replace procedure proj_emp(emp_name in varchar2)
as
cursor curnew is
select empname,projname from employee e inner join emp_proj ep on e.empno=ep.empno inner join project p on p.projno=ep.projno;
emp curnew%rowtype;
begin
open curnew;
fetch curnew into emp;
while curnew%found loop
dbms_output.put_line('empname:'|| emp.empname);
dbms_output.put_line('empname:'|| emp.projname);
fetch curnew into emp;
end loop;
close curnew;
end;
/



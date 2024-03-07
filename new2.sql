create or replace function check1(emp_no char)
return varchar2 as
rev char(20);
job varchar2(30);
begin
select empno,job into rev,job from employee  where empno=emp_no;
if job='manager' then
return('the employee is a manager');
else
return('the employee is not manager');
end if;
exception
when no_data_found then
return('no data in the database');
end;
/
create or replace trigger trig11 before insert or update or delete
on employees
for each row 
declare
action varchar2(20);
begin
if inserting then
action:='insert';
insert into audit_emp values(:new.eno,:new.ename,:new.esal,:new.job,action,sysdate);
end if;
end;
/

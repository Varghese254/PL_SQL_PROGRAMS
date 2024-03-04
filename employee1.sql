declare
begin
update employee set salary=salary+(salary*0.15) where empno=&empno;
if sql%found then
dbms_output.put_line(sql%rowcount || 'got updation');
else
dbms_output.put_line('no updations');
end if;
end;
/

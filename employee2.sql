declare
begin
update employee set salary=salary+(salary*.15) where job='ANALYST';
if sql%found then
dbms_output.put_line(sql%rowcount || 'updated');
else
dbms_output.put_line('not updated');
end if;
end;
/
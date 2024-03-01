declare
total_rows number;
begin
update customers set salary=salary*0.7;
if sql%found then
dbms_output.put_line('updated');
else
dbms_output.put_line('not updated');
end if;
end;
/
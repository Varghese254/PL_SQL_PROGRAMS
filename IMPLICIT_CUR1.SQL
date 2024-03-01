declare
begin
update employee set salary=salary+0.15*salary where empno=&empno;
if sql%found then
	dbms_output.put_line(sql%rowcount||' Salary updated');
else
	dbms_output.put_line('No records found');
end if;
end;
/ 

declare
begin
	update employee set salary=salary+0.15*salary where job='ANALYST';
	if sql%found then
		dbms_output.put_line(sql%rowcount||' Salary updated');
	else
		dbms_output.put_line('no records updated');
	end if;
end;
/
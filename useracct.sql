declare
ano varchar2(20);
bal number;
begin
ano:=&ano;
select balance into bal from accts where acct_no=ano;
if bal-2000>500 then
update accts set balance=balance-2000 where acct_no=ano;
dbms_output.put_line('updated');
else
dbms_output.put_line('not updated');
end if;
end;
/


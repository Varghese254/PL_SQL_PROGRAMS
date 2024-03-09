declare
sal number(10,2);
begin
savepoint s1;
update accts set balance=balance+2000 where name='maria jacob';
update accts set balance=balance+2500 where name='albert';
select sum(balance) into sal from accts;
if sal<=75000 then
commit;
dbms_output.put_line('sucess...');
else
rollback to savepoint s1;
end if;
end;
/
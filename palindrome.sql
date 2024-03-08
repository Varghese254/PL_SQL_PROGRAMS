create or replace procedure palindrome(name in varchar2)
as 
p varchar2(20);
begin
select reverse(name) into p from dual;
if p=name then
dbms_output.put_line('palindrome');
else
dbms_output.put_line('not palindrome');
end if;
end;
/
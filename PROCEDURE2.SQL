create or replace procedure palindrome(name in varchar2) AS
p varchar2(30);
begin
SELECT REVERSE(NAME) INTO P FROM DUAL;
if p=name then
dbms_output.put_line(p);
end if;
end;
/
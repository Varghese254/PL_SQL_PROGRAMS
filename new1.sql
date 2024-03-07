create or replace function reversed(empno in char)
return char as
rev char(10);
begin
select reverse(empno)into rev from dual;
return(rev);
end;
/


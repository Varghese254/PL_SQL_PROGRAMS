
create or replace cursor emplist2 is
select empname from employee;
emp emplist2%rowtype;
begin
open emplist2;
loop
fetch emplist2 into emp;
exit when emplist2%notfound;
palindrome(emp.empname);
end loop;
end;
/

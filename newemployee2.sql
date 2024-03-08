declare
empname varchar2(80);
cursor empcur is
select DISTINCT empname from employee;
begin
open empcur;
fetch empcur into empname;
while empcur%found loop
dbms_output.put_line('empname'|| empname);
proj_emp(empname);
fetch empcur into empname;
end loop;
close empcur;
end;
/
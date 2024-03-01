declare
cursor empcur is select empname,deptno,salary from  (select * from employee order by salary desc) where rownum <=5; 
empp empcur%rowtype;
begin
open empcur;
fetch empcur into empp;
dbms_output.put_line('*******************************************************');
while empcur%found
loop
	dbms_output.put_line(empp.empname||'  '||empp.deptno||'  '||empp.salary);
	fetch empcur into empp;
end loop;
close empcur;
end;
/ 
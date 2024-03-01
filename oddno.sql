declare
n1 number;
i number;

begin
n1:=&n1;
for i in 1..n1
loop
dbms_output.put_line('hello');
end loop;
end;
/
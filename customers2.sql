
declare
c_id customers.id%type;
c_name customers.name%type;
c_address customers.address%type;
cursor c is 
select id,name,address from customers;
begin
open c;
loop
fetch c into c_id,c_name,c_address;
exit when c%notfound;
dbms_output.put_line(c_id  c_name c_address);
end loop;
close c;
end;
/
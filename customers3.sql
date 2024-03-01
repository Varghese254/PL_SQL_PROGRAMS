declare
new_row number;
cursor c_customers;
begin
cid:=customers.id%type;
cname:=customers.name%type;
caddress:=customers.address%type;
c_customers is select id,name,address from customers;
begin
open c_customers;
loop
fetch c_customers into cid,cname,caddress;
exit when c_customers%notfound;
dbms_output.put_line(cid,cname,address);
end loop;
close c_customers;
end;
/

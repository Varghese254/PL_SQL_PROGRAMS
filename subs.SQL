declare
num1 number;
num2 number;
sub number;
begin 
dbms_output.put_line('enter the number1');
num1:=&num1;
dbms_output.put_line('enter the number2');
num2:=&num2;
sub:=num1-num2;
insert into substracted(num1,num2,sub) values(num1,num2,sub);
end;
/





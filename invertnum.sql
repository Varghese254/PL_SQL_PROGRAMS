declare
num number(10,2);
invert_num varchar2(200);
begin
num:=&num;
invert_num:=to_char(num);
select reverse(invert_num) into invert_num from dual;
dbms_output.put_line('inverted number='|| invert_num);
end;
/
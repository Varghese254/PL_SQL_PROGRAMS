create or replace function check2(moviename in varchar2)
return number as
var number;
begin
select gross into  var from movies;
if gross>5000 then
return('greather');
else
return('smaller');
end if;
end;
/
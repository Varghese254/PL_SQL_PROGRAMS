declare
area number(10,2);
r int;
begin
r:=3;
for i in 3..7 loop
area:=3.14*(r**2);
insert into areacircle values(r,area);
end loop;
end;
/

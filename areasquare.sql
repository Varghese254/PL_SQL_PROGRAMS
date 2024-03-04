declare
side int;
area number(10,2);
perimeter number;
begin

for side in 2..10 loop
area:=side*side;
perimeter:=4*side;
insert into square values(side,area,perimeter);
end loop;
end;
/
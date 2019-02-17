declare
 num number(5):=0;
 limit number(5);
begin
   limit:=:enter_limit;
   for i in 1..limit
   loop
   num:=num+i;
   end loop;

dbms_output.put_line('sum of number upto ' ||limit||' is:- '||num);
 end;
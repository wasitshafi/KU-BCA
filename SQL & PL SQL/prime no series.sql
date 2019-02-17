declare
 num number(5);
 j1 number(3);
begin
   num:=:enter_num;
   for i in 2..num
   loop
   
        for j in 2..i
         loop
           j1:=j;
            if(mod(i,j)=0)
           then
           exit;
           end if;
       end loop;
  if(j1=i)
  then
   dbms_output.put_line(i||' ');
  end if;
end loop;
end;
declare
 num number(5);
 temp number(3);
begin
   num:=:enter_num;
   for i in 2..num
   loop
     if(mod(num,i)=0)
      then
       temp:=i;
       exit;
     end if;
   end loop;
 if(num=temp  and num>1)
 then
  dbms_output.put_line(num ||' is prime number.');
 elsif(num>temp and num>1)
 then
  dbms_output.put_line(num ||' is composite number.');
 else
  dbms_output.put_line('wrong input (i.e. num<1)...!');
 end if;
end;
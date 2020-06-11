declare
 num number(3):=1;
 begin
  dbms_output.put_line('##############----while loop---##################');
 while(num<=10)
 loop
 dbms_output.put_line(num);
 num:=num+1;
 end loop;
 dbms_output.put_line('##############----for loop---##################');
  for i in 10..20 loop
  dbms_output.put_line(i);
  end loop;

end;
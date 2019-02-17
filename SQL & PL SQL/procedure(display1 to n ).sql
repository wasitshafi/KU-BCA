create or replace procedure display(no number) is  
  a number(2):=1;
      begin
      while(a<=no)
loop
dbms_output.put_line(a);
a:=a+1;
end loop;
end;
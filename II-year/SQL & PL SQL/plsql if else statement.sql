declare
  x number(2);

begin 
x:=:enter_value; 
 if(x>=0) then
  dbms_output.put_line('value of x is :'||x||' and its a positive no.');
 else
  dbms_output.put_line('value of x is :'||x||' and its a negative no.');
 end if;
end;

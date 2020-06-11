declare
  x number(2);

begin 
x:=:enter_value; 
  if(x>=0) then
  dbms_output.put_line('x is a positive no.');
   end if;
  dbms_output.put_line('value of x is :'||x);
end;

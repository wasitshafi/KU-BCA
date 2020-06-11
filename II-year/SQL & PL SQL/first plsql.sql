declare
  x number(2);
  y number(2); 
   /*this statement is 
     multiple line comment*/
    --this statement is single line comment
begin 
x:=:enter_value; 
y:=10;
dbms_output.put_line('hello' || ' i am using pl/sql first time.');
dbms_output.put_line('value of x is :'||x);
dbms_output.put_line('value of y is :'||y);
end;

declare
  x number(2);

begin 
x:=:enter_value_frm_0-5; 
 if(x=0)then
   dbms_output.put_line('value of x is (zero):'||x)
 elsif(x=1) then
   dbms_output.put_line('value of x is (one):'||x);
 elsif(x=2) then
   dbms_output.put_line('value of x is (two):'||x);
 elsif(x=3) then
   dbms_output.put_line('value of x is (three):'||x);
 elsif(x=4) then
   dbms_output.put_line('value of x is (four):'||x);
 elsif(x=5) then
   dbms_output.put_line('value of x is (five):'||x);
 else
  dbms_output.put_line('value of x is out of range...');
end if;
end;

declare
 i number(2):=1;
 j number(2);--for loop can initialise variables
 k number(2):=1;
begin
  loop
   dbms_output.put_line('simple loop''i= '||i);
    i:=i+1;
   exit when i>3;-- in simple loop we have to define an explicit exit /end of loop conition other wise its infinite loop
   end loop;

   for j in 1..3
    loop
    dbms_output.put_line('for loop(increament)'||'j= '||j);
    end loop;

   dbms_output.put_line('');
 for j in reverse 1..3
    loop
    dbms_output.put_line('for loop(decreament)'||'j= '||j);
    end loop;
   
 while (k<=3)
 loop
    dbms_output.put_line('while loop''k= '||k);
    k:=k+1; 
end loop;
end;
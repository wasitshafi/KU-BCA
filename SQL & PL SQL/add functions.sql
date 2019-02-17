declare
 a number;
 b number;
 c number;
function add(x in number,y in number)return number is
 begin
   c:=x+y;
   return c;
  end;
begin
 a:=:enter_value_of_a;
 b:=:enter_value_of_b;
 c:=add(a,b);
 dbms_output.put_line('a= '||a);
 dbms_output.put_line('b= '||b);
 dbms_output.put_line('sum of a and b is  :'||c);
end;

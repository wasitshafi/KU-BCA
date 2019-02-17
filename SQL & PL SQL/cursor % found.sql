select * from bill_info
declare
    name bill_info.item_name%type;
    price bill_info.item_price%type;
    cursor info is select item_name,item_price from bill_info where item_price>10;
begin
  open info;
   dbms_output.put_line('AMT  '||'ITEM NAME');
   dbms_output.put_line('');
   loop
     fetch info into name,price;
     if(info%found)then
        dbms_output.put_line(price||'  '||name); 
     else
        dbms_output.put_line(' ');
        dbms_output.put_line('total no. of rows effected :-'||info%rowcount);
        exit;
    end if;
  end loop;
 close info;
end;

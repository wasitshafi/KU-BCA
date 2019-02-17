declare
    name bill_info.item_name%type;
    price bill_info.item_price%type;
    cursor info is select item_name,item_price from bill_info where item_price>50;
begin
 open info;
   dbms_output.put_line('');
   loop
     fetch info into name,price;
     if(info%notfound)then
        dbms_output.put_line('data is not found.......!'); 
         exit;
     else
        dbms_output.put_line('data is  found.....!');
        exit;
    end if;
  end loop;
close info;
end;
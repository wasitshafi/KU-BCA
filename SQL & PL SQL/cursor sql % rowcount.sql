select * from bill_info
declare
    num number(3);
begin

update bill_info set item_no=item_no+1 where total_price>50;
num:=sql%rowcount;
   dbms_output.put_line('total no. of rows effected is :-'||num);
end;
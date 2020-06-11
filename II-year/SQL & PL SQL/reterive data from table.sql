select * from bill_info

declare
 name bill_info.item_name%type;
 i_no number(3);
begin
i_no:=:enter_item_no;
select item_name into name from bill_info where item_no=i_no;
dbms_output.put_line(name);
EXCEPTION  
 WHEN no_data_found THEN   
  dbms_output.put_line('No such item no found!');  
 WHEN others THEN     
  dbms_output.put_line('Error!');
end;
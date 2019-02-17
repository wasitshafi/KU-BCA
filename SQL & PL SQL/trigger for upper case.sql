create or replace trigger uper
before insert or update of item_name on bill_info
for each row
declare 
d date;
begin

:new.item_name:=upper(:new.item_name);

dbms_output.put_line('last manipulation date is :-  '||d);

d:=sysdate;
end; 
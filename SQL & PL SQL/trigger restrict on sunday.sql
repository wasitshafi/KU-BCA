create or replace trigger rest
before insert or delete or update on bill_info
for each row
declare   
    x char(20);
begin
     x:= upper(to_char(sysdate,'day'));
     if(x = 'WEDNESDAY')then
      raise_application_error(-20022,'can,t use database on wednesday....!!');
     end if;
end;

select * from bill_info
update bill_info  set item_no=item_no+1
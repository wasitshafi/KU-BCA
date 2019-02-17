create table bill_info(
                        item_no varchar2(5),
                        item_name varchar2(15),
                        item_price number(5),
                        item_quantity number(3),
                        total_price number(5)
                       );
   desc bill_info
select * from bill_info
select * from bill_info where item_name like'_e%'
select * from bill_info where item_price>=(select max(item_price)from bill_info where item_price<(select max(item_price)from bill_info))

select * from bill_info where item_price=(select max(item_price)from bill_info)

                                                 -- item name will always be in upper case because  triggers has created for that purpose...
                                                   -- user cannot insert or update data on sunday because trigger has created for that purpose...

select b.total_price from bill_info b  --table alaises (b_total instead of bill_info.total)

insert into bill_info values(:item_no,:item_name,:item_price,:item_quantity,:total_price)

select item_name ,sum(item_quantity) from bill_info group by item_name

select item_name as item ,sum(item_quantity)as net_quantity,sum(total_price)as net_price from bill_info group by item_name
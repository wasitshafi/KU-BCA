create table admin_t(
                    adm_no number(4) primary key,
                    reg_no varchar2(10) check (reg_no like'reg%') unique,
                    date_o_adm date,
                    a_fee number check(a_fee between 4999 and 19999),
                )
desc admin_t
select * from admin_t
select * from admin_t order by adm_no   -- by default its in ascending order

insert into admin_t values(9997,'regk6755',sysdate,6000)
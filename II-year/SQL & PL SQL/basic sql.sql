nncreate table std1(
                   id number(3) primary key,
                   name varchar2(10),
                   class varchar2(10),
                   address varchar2(20)
                )
desc std1
select * from std1
select id from std1
select id,name from std1
select * from std1 where id>50
select * from std1 where name='basit' OR id>20
select * from std1 where name='basit' and id>20 -- id is = 10
select * from std1 where not id >20  -- logical not operator
select * from std1 where id >8 and class='2nd year'  -- logical and operator
select * from std1 where id>8 or class='2nd year'  -- logical or operator
select * from std1 where id between 10 and 100
select * from std1 where id not between 10 and 100
select * from std1 where class is null
rollback
select * from std1 where class is not null

select name from std1 where id between 10 and 100 
select name,id  from std1 where id not in (8,10,50,100)
select name,id  from std1 where id in(8,10,33,100)
select name new from std1 where id in(8,10,33,100)-- changes the column name
select distinct (name)from std1    -- same will be displayed only once eg: pqr
select all name from std1
select all class from std1
select * from  std1 where class <> '2nd year' -- ( <> ) not equal to operator.
select * from std1 order by id -- by default its in ascending order
select * from std1 order by id desc

insert into std1 values(6,'pqr','12th','srinagar')
insert into std1 values(:id,:name,:class,:address)
insert into std1 (id,name) values(33,'noname')

delete from std1 where id=1
delete from std1 where id>80
update std1 set name='qwerty',class='mca 1stsem' where id=5



update std1 set name=null where id>800....,,,...,,,.....######111111!!!!!!!!!!!!



alter table std1 add date number(2);
alter table std1 drop column class

select(2+3) from dual
select(6-1) from dual
select(2*30)from dual
select(7/2) from dual
select * from admin_t
create view new as select adm_no,id,reg_no,address from admin_t,std1,admin_t,std1

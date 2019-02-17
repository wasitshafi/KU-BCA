create table t1(
            name varchar2(11),
            rno  varchar2(5) primary key
)

insert into t1 values('kaka','123')
delete from t1 where rno=121
select * from t1 
create table t2(
                 rno varchar2(5) references t1(rno) on delete cascade,
                 m number(3)
)


insert into t2 values ('221',5)
select * from t2



create table t3(
                 rno varchar2(5) references t1(rno) on delete set null,
                 id number(3)
)


insert into t3 values ('121',222)
select * from t3
create table dept_id(
         did varchar2(5) primary key check(did like 'd%'),
         dname varchar(5) not null);

desc dept_id

select * from  dept_id  order by did


insert into dept_id values(:enter_dept_id,:enter_dept_name)
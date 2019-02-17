select * from dept_id
create table dept_exp(
               did varchar2(6) references dept_id (did),
               amt number(6),
               exp_date date
 )
insert into dept_exp values(:enter_did,:enter_amount,sysdate)
select * from dept_exp
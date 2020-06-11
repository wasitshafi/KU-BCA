create user system2 identified by plsql
drop user system1

grant select,insert on std1 to public
select * from std1

alter user system1 account lock
alter user system account unlock
select * from dba_users
create trigger tgr_logoff before logoff on database
begin
insert into logoff_tbl values(sys_contex('userenv','session'),systdate);
end;

create or replace  package pack1 as
procedure proc1;
function fun1 return varchar2;
end pack1;


create or replace package body pack1 as 
  procedure proc1 is
  begin
   dbms_output.put_line('best of luck.....message from proc1.');
   end proc1;

 function fun1 return varchar2 is 
 begin 
 return('hello .... message from fun1.');
 end fun1;
end pack1;


select  pack1.fun1 from dual;
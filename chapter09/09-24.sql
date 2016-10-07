-- artificial delay with the DBMS_LOCK.SLEEP procedure;
-- select localtimestamp each time;
-- don't forget to commit!

col versions_starttime format a21
col versions_endtime   format a21

drop table e;
create table e as select * from employees;
alter session set NLS_TIMESTAMP_FORMAT='DD-MON-YYYY HH24:MI:SS.FF3';
select localtimestamp as table_created  from dual;

execute dbms_lock.sleep(42);
update e
set    msal = msal + 10;
commit;
select localtimestamp as after_update_1 from dual;

execute dbms_lock.sleep(16);
update e
set    msal = msal - 20
where  deptno = 10;
commit;
select localtimestamp as after_update_2 from dual;

execute dbms_lock.sleep(42);
delete from e
where  deptno <= 20;
commit;
select localtimestamp now               from dual;

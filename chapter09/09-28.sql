-- row movement is needed for flashback table
alter table e enable row movement;

select count(*) from e;
flashback table e to timestamp to_timestamp('&timestamp');
select count(*) from e;

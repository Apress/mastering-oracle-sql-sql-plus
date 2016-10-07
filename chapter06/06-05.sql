delete from (select *
             from salgrades
             where grade = 5);

rollback;

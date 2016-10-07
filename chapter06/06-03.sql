update registrations
set    evaluation = 1
where (course,begindate)
   in (select course,begindate
       from   offerings
       where  location = 'CHICAGO');

rollback;

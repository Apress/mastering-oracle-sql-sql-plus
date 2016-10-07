delete from history   where empno=7654;
delete from employees where empno=7654;
savepoint ONE;

delete from offerings where course='ERM';
delete from courses   where code  ='ERM';
rollback to savepoint ONE;

select description
from   courses
where  code='ERM';

rollback;

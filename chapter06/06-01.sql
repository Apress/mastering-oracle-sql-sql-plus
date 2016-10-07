insert into departments
values (90,'SUPPORT','SEATTLE', NULL);

insert into employees(empno,ename,init,bdate,msal,deptno)
values (7001,'ZOMBIE','ZZ',trunc(sysdate),0, DEFAULT);

select * from employees where empno = 7001;

insert into departments(dname,location,deptno)
values('CATERING','ORLANDO', 10);

insert into salgrades
select grade + 5
,      lowerlimit + 2300
,      least(9999,upperlimit + 2300)
,      500
from   salgrades;

rollback;

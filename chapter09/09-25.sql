set verify off

select empno, ename, deptno, msal
from   e;

select empno, ename, deptno, msal
from   e
       as of timestamp to_timestamp('&timestamp');

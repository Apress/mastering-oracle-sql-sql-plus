break on mgr

select mgr, ename, msal
,      sum(msal) over
       ( PARTITION BY mgr
         order by mgr, msal, empno
         range unbounded preceding
       ) as cumulative
from   employees
order  by mgr, msal;

clear breaks

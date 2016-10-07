select empno, begindate, msal
,      LAG(msal) over
       ( partition by empno
         order by empno, begindate
       ) as prev_sal
,      LEAD(msal) over
       ( partition by empno
         order by empno, begindate
       ) as next_sal
from   history
order  by empno, begindate;

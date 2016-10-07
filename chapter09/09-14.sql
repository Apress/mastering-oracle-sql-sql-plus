select *
from  (select empno, msal
       from   history
       order  by msal desc)
where  rownum <= 3;

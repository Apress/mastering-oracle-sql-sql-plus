col    versions_starttime format a25
col    versions_endtime   format a25
break  on empno

select empno, msal
,      versions_starttime
,      versions_endtime
from   e
       versions between timestamp minvalue and maxvalue
where  deptno = 10
order  by empno, versions_starttime nulls first;

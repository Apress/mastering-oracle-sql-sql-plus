update employees
set    job    = 'SALESREP'
,      msal   = msal - 500
,      comm   = 0
,      deptno = 30
where  empno  = 7876;

rollback; 

--¹®Á¦1
select * from student;
select name||' ''s ID :'|| ID||', WEIGHT is '|| WEIGHT || 'kg' from student;
select * from emp;
select ename|| '('|| JOB||'),'||ename ||' '' '||JOB||' '' ' from emp;
select * from emp;
select ename||' ''s Sal is $'|| Sal from emp;
select * from emp;
select empno, ename from emp where empno=7900;
select ename, sal from emp where sal < 1000;
select ename, sal, deptno from emp where deptno = 10;
select ename, sal, sal+100, deptno from emp where deptno = 10;
select ename, sal, sal*1.1, deptno from emp where deptno = 10;
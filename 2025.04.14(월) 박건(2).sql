--巩力1
select * from dept;
--巩力2
select ename, job, empno, hiredate from emp;
--巩力3
select distinct job from emp;
--巩力4
select ename, empno from emp where sal>=2850;
--巩力5
select ename, empno from emp where empno=7566;
--巩力6
select ename, sal from emp where sal < 1500 or sal > 2850;
--巩力7
select ename, job, hiredate from emp where hiredate >= '81/02/20' and hiredate <= '81/05/01';
--巩力8
select * from  emp;
select ename, empno from emp where deptno=10 or deptno=30;
--����1
select * from dept;
--����2
select ename, job, empno, hiredate from emp;
--����3
select distinct job from emp;
--����4
select ename, empno from emp where sal>=2850;
--����5
select ename, empno from emp where empno=7566;
--����6
select ename, sal from emp where sal < 1500 or sal > 2850;
--����7
select ename, job, hiredate from emp where hiredate >= '81/02/20' and hiredate <= '81/05/01';
--����8
select * from  emp;
select ename, empno from emp where deptno=10 or deptno=30;
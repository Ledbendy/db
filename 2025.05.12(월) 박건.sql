select 2+'2' from dual;
select '3+3' from dual;
select '3'+'3' from dual;
select 2+'A' from dual;
select 2+to_number('3') from dual;

select to_number('3') from dual;
select to_number('A') from dual;
select ascii('A') from dual;

select to_date('24/4/28')+1 from dual;
select '24/4/28'+1 from dual;

select * from emp;
select ename, comm, NVL(comm,0), NVL(comm,100)from emp where deptno = 30;
select empno, ename, sal, comm, NVL2(comm, sal+comm, sal*0) "NVL2" from emp where deptno = 30;

select * from professor;
select deptno, name, decode(deptno, 101, 'Computer Engineering','AAA') "dname" from professor;
select empno, ename, sal,
       case WHEN sal between 1 and 1000 then 'level 1'
       WHEN sal between 1001 and 2000 then 'level 2'
       WHEN sal between 2001 and 3000 then 'level 3'
       WHEN sal between 3001 and 4000 then 'level 4'
       else 'level 5'
       end "LEVEL"
       from emp;
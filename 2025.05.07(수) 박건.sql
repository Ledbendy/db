select sysdate, to_char(sysdate) from dual;
select sysdate, to_char(sysdate), to_char(sysdate,'mm'),
    to_char(sysdate,'mon'), to_char(sysdate,'month') from dual;
--¿œ
select sysdate, to_char(sysdate), to_char(sysdate,'dd'),
    to_char(sysdate,'day'), to_char(sysdate,'ddth') from dual;
select sysdate, to_char(sysdate,'yyyy-mm-dd:hh24:mi:ss') from dual;
select * from student;
select studno, name, birthday from student
    where substr(birthday,4,2)='01';

desc student;
select * from emp;
select ename, empno, hiredate from emp where substr(hiredate,4,2) in('01','02','03');
select empno, ename, sal, comm, to_char(sal*12+comm,'999,999.00') from emp where ename='ALLEN';

select empno, ename, to_char(hiredate,'yyyy-mm-dd') hiredate,
    to_char(sal*12+comm,'$9999,999.00') sal, 
    to_char((sal*12+comm)*1.15,'$9999,999.00') "15% up" from emp where comm is not null; 

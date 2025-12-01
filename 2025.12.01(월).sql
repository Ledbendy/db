--문제 1번
select * from gift;
select * from customer;

--문제 2번
select c.gname, point, g.gname from customer c, gift g
where g.gname='Notebook' and c.point>=g.g_start;

select c.gname, point, g.gname gift_name from customer c, gift g
where c.point between g.g_start and g.g_end;

--문제 5번
create table dept3 as select * from dept2;

--문제 6번
select ename, d.deptno, dname from emp e, dept d where e.deptno=d.deptno;

--문제 7번
select max(sal+nvl(comm,0)) from emp;

--문제 8번
select deptno, ename, sal, sum(sal) over(order by sal) total from emp;

--문제 9번
select e1.empno, e1.ename, e1.mgr, e2.ename from emp e1, emp e2 where e1.mgr=e2.empno;

--문제 10번
select deptno, ename, sal, sum(sal) over(), round(sal/sum(sal) over() *100,2)
    from emp order by 5 desc;
select deptno, ename, sal, sum(sal) over(), round(ratio_to_report(sal) over() *100,2)
    from emp order by 5 desc;
    
--문제 11번
select deptno, sum(sal) total from emp group by deptno;

--문제 12번
select e1.empno, e1.ename, e1.hiredate, count(e2.empno) from emp e1, emp e2
where e1.hiredate>e2.hiredate(+) group by e1.empno, e1.ename, e1.hiredate order by 4;

--문제 13번
alter table dept6 modify(loc varchar2(20));

--문제 14번
rename dept6 to dept7; 

--문제 15번
create table new_table(no number(3), name varchar2(10), birth date default sysdate);

--문제 16번
drop table new_table;
truncate table new_table;
delete from new_table;
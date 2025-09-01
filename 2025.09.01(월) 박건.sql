select * from emp;
select max(sal+nvl(comm,0)) "MAX",
    min(sal+nvl(comm,0)) "MIN",
    round(avg(sal+nvl(comm,0)),1) "AVG"
from emp;

select * from student;
select count(*)||'EA' "TOTAL",
    count(decode(to_char(birthday,'MM'),'01',0))||'EA' "JAN",
    count(decode(to_char(birthday,'MM'),'02',0))||'EA' "FEB",
    count(decode(to_char(birthday,'MM'),'03',0))||'EA' "MAR",
    count(decode(to_char(birthday,'MM'),'04',0))||'EA' "APR",
    count(decode(to_char(birthday,'MM'),'05',0))||'EA' "MAY",
    count(decode(to_char(birthday,'MM'),'06',0))||'EA' "JUN",
    count(decode(to_char(birthday,'MM'),'07',0))||'EA' "JUL",
    count(decode(to_char(birthday,'MM'),'08',0))||'EA' "AUG",
    count(decode(to_char(birthday,'MM'),'09',0))||'EA' "SEP",
    count(decode(to_char(birthday,'MM'),'10',0))||'EA' "OCT",
    count(decode(to_char(birthday,'MM'),'11',0))||'EA' "NOV",
    count(decode(to_char(birthday,'MM'),'12',0))||'EA' "DEC"
from student;

select * from student;
select count(*) "TOTAL",
    count(decode(substr(tel,1,instr(tel,')')-1),'02',0)) "SEOUL",
    count(decode(substr(tel,1,instr(tel,')')-1),'031',0)) "GYENGGI",
    count(decode(substr(tel,1,instr(tel,')')-1),'051',0)) "BUSAN",
    count(decode(substr(tel,1,instr(tel,')')-1),'052',0)) "ULSAN",
    count(decode(substr(tel,1,instr(tel,')')-1),'053',0)) "DAEGU",
    count(decode(substr(tel,1,instr(tel,')')-1),'055',0)) "GYANGGNAM"
from student;

select * from emp;
select deptno,
    sum(decode(job,'CLERK',sal,0)) "CLERK",
    sum(decode(job,'MANAGER',sal,0)) "MANAGER",
    sum(decode(job,'PRESIDENT',sal,0)) "PRESIDENT",
    sum(decode(job,'ANALYST',sal,0)) "ANALYST",
    sum(decode(job,'SALESMAN',sal,0)) "SALESMAN",
    sum(nvl2(job,sal,0)) "TOTAL"
from emp
group by rollup(deptno);

select *from emp;
select deptno, ename, sal,
    sum(sal) over(order by sal) "TOTAL"
from emp;

select * from fruit;
select max(sum(decode(name,'apple',100))) "APPLE",
    max(sum(decode(name,'grape',200))) "ORAPE",
    max(sum(decode(name,'orange',300))) "ORANGE"
from fruit
group by name;

select * from student;
select count(name)||'EA ('|| (count(name)/count(name)*100)||'%)' "TOTAL",
    count(decode(substr(tel,1,instr(tel,')',1,1)-1),'02','SEOUL'))||'EA ('||
    (count(decode(substr(tel,1,instr(tel,')',1,1)-1),'02','SEOUL'))/count(name)*100)||'%)' "SEOUL",
    count(decode(substr(tel,1,instr(tel,')',1,1)-1),'031','GYENGGI'))||'EA ('||
    (count(decode(substr(tel,1,instr(tel,')',1,1)-1),'031','GYENGGI'))/count(name)*100)||'%)' "GYENGGI",
    count(decode(substr(tel,1,instr(tel,')',1,1)-1),'051','BUSAN'))||'EA ('||
    (count(decode(substr(tel,1,instr(tel,')',1,1)-1),'051','BUSAN'))/count(name)*100)||'%)' "BUSAN",
    count(decode(substr(tel,1,instr(tel,')',1,1)-1),'052','ULSAN'))||'EA ('||
    (count(decode(substr(tel,1,instr(tel,')',1,1)-1),'052','ULSAN'))/count(name)*100)||'%)' "ULSAN",
    count(decode(substr(tel,1,instr(tel,')',1,1)-1),'053','DAEGU'))||'EA ('||
    (count(decode(substr(tel,1,instr(tel,')',1,1)-1),'053','DAEGU'))/count(name)*100)||'%)' "DAEGU",
    count(decode(substr(tel,1,instr(tel,')',1,1)-1),'055','GYANGGNAM'))||'EA ('||
    (count(decode(substr(tel,1,instr(tel,')',1,1)-1),'055','GYANGGNAM'))/count(name)*100)||'%)' "GYANGGNAM"
from student;

select * from emp;
select deptno, ename, sal,
    sum(sal) over(partition by deptno order by sal) "TOTAL"
from emp;

select * from emp;
select deptno, ename, sal, sum(sum(sal)) over() "TOTAL_SAL",
    round((ratio_to_report(sum(sal)) over())*100,2) "%"
from emp
group by deptno, ename, sal
order by 5 desc;

select * from emp;
select deptno, ename, sal,
    sum(sum(sal)) over(partition by deptno) "SUM_DEPT",
    round((ratio_to_report(sum(sal)) over(partition by deptno))*100,2) "%"
from emp
group by deptno, ename, sal
order by 1;



























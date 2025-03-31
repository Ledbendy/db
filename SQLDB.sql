--데이터 구조
desc emp;
select * from emp;
select ename, job from emp;
--테이블 구조
desc professor;
select * from professor;
select name, '안녕하세요.' "인사"
from professor;
select dname, 'it''s deptno : ' "gon ni jji wa", deptno "dname and deptno" from dept;
select dname, 'it''s deptno : '|| deptno "dname and deptno" from dept;
select dname, q'[,it's deptno : ]' "hado99, gorytenmeche", deptno "dname and deptno" from dept;
select profno, name, pay from professor;
select profno "교수님 번호", name 이름, pay 급여 from professor;
--������ ����
desc emp;
select * from emp;
select ename, job from emp;
--���̺� ����
desc professor;
select * from professor;
select name, '�ȳ��ϼ���.' "�λ�"
from professor;
select dname, 'it''s deptno : ' "gon ni jji wa", deptno "dname and deptno" from dept;
select dname, 'it''s deptno : '|| deptno "dname and deptno" from dept;
select dname, q'[,it's deptno : ]' "hado99, gorytenmeche", deptno "dname and deptno" from dept;
select profno, name, pay from professor;
select profno "������ ��ȣ", name �̸�, pay �޿� from professor;
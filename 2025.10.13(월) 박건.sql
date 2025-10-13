--4�� JOIN ��������
--�����
--�� 1) emp ���̺�� dept ���̺��� ��ȸ�Ͽ� �Ʒ��� ���� ����ϼ���.
select * from emp;
select * from dept;
--�� 2) �л� ���̺� (student) �� ���� ���̺� (professor) �� join �Ͽ� �л��� �̸��� ����������ȣ, �������� �̸��� ����ϼ���.
select * from student;
select * from professor;
select s.name STU_NAME,p.name PROF_NAME from student s,professor p where s.profno=p.profno;
--�� 3) �л� ���̺�(student)�� �а� ���̺�(department) , ���� ���̺�(professor) �� Join�Ͽ� �л��� �̸��� �л��� �а��̸�, �л��� �������� �̸��� ����ϼ���.
select * from student;
select * from professor;
select * from department;
select s.name STU_NAME,p.name PROF_NAME,d.dname DEPT_NAME from student s,professor p,department d where s.deptno1=d.deptno and s.profno=p.profno;
--������
--�� 1) Custormer ���̺�� gift ���̺��� Join�Ͽ� ������ ���ϸ��� ����Ʈ�� ��ȸ�� �� �ش� ���ϸ��� ������ ���� �� �ִ� ��ǰ�� ��ȸ�Ͽ� ���� �̸��� ���� �� �ִ� ��ǰ ���� �Ʒ��� ���� ����ϼ���.
select * from Customer;
select * from gift;
select c.gname CUST_NAME,to_char(c.point,'999,999') POINT,
    g.gname GIFT_NAME
    from Customer c,gift g
    where c.point between g.g_start and g.g_end;

--�� 2) Student ���̺�� score ���̺� , hakjum ���̺��� ��ȸ�Ͽ� �л����� �̸��� ������ ������ ����ϼ���.
select * from Student;
select * from score;
select * from hakjum;
select s.name,sc.total,h.grade from Student s,score sc,hakjum h
    where sc.studno=s.studno and
    total between min_point and max_point;    
--outer join
--�� 1 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.
--�� ���������� �������� ���� �л��� ��ܵ� �Բ� ����ϼ���.
select * from Student;
select * from Professor;
select s.name STU_NAME,p.name PROF_NAME from student s,professor p where s.profno=p.profno(+);
--�� 2 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.
--�� �����л��� �������� ���� ������ ��ܵ� �Բ� ����ϼ���.
select * from Student;
select * from Professor;
select s.name STU_NAME,p.name PROF_NAME from student s,professor p where s.profno(+)=p.profno;
--�� 3 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.
--�� �����л��� ���� �� �� ���� ��ܰ� ���� ������ ���� �ȵ� �л� ����� �Ѳ����� ����ϼ���.
select * from Student;
select * from Professor;
select s.name STU_NAME,p.name PROF_NAME from student s,professor p where s.profno(+)=p.profno
    union
    select s.name STU_NAME,p.name PROF_NAME from student s,professor p where s.profno=p.profno(+);

select s.name STU_NAME,p.name PROF_NAME from student s full outer join professor p on s.profno=p.profno;
--4�� JOIN ��������
--1. �л� ���̺� (student) �� �а� ���̺� (department) ���̺��� ����Ͽ� �л��̸�, 1 �����а���ȣ(deptno1) , 1���� �а� �̸��� ����ϼ���.
 select * from student;
 select 8 from department;
 select name stu_name, deptno1, dname dept_name
 from student s, department d
 where d.deptno=s.deptno1;

--2. emp2 ���̺�� p_grade ���̺��� ��ȸ�Ͽ� ���� ������ �ִ� ����� �̸��� ����, ���� ����, �ش� ������ ������ ���ѱݾװ� ���� �ݾ��� �Ʒ� ��� ȭ��� ���� ����ϼ���.
select * from emp2;
select * from p_grade;
select name,e2.position,pay,s_pay low_pay, e_pay high_pay
from emp2 e2, p_grade p
where e2.position=p.position;

--3. Emp2 ���̺�� p_grade ���̺��� ��ȸ�Ͽ� ������� �̸��� ����, ���� ���� , ���� ���� �� ����ϼ���. 
--���� ������ ���̷� ����ϸ� �ش� ���̰� �޾ƾ� �ϴ� ������ �ǹ��մϴ�.  ���̴� ����(sysdate)�� �������� �ϵ� trunc �� �Ҽ��� ���ϴ� �����ؼ� ����ϼ���.
select * from emp2;
select * from p_grade;
select name,trunc(months_between(sysdate,e2.birthday)/12) as "age",
    e2.position as "curr_position",p.position
    from emp2 e2, p_grade p
    where trunc(months_between(sysdate,e2.birthday)/12) between
    p.s_age and p.e_age;

--4 . customer ���̺�� gift ���̺��� Join�Ͽ� ���� �ڱ� ����Ʈ���� ���� ����Ʈ�� ��ǰ �� �Ѱ����� ������ �� �ִٰ� �� ��,
--Notebook �� ������ �� �ִ� ����� ����Ʈ, ��ǰ���� ����ϼ���.
select * from customer;
select * from gift;
select c.gname, c.point, g.gname
    from customer c, gift g
    where g.g_start<=c.point and g.gname='Notebook';

--5. professor ���̺��� ������ ��ȣ, �����̸�, �Ի���, �ڽź��� �Ի��� ���� ��� �ο����� ����ϼ���. �� �ڽź��� �Ի����� ���� ������� ������������ ����ϼ���.  
select * from professor;
select p1.profno, p1.name, p1.hiredate, count(nvl2(p2.profno, p1.profno,null)) as count
    from professor p1, professor p2 where p1.hiredate > p2.hiredate(+)
    group by p1.profno, p1.name, p1.hiredate
    order by 3;

--6. emp ���̺��� �����ȣ, ����̸�, �Ի���, �ڽź���  ���� �Ի��� ��� �ο����� ����ϼ���. �� �ڽź��� �Ի����� ���� ������� ������������ ����ϼ���.
select * from emp;
select * from emp;
select e1.empno, e1.ename, to_char(e1.hiredate, 'YY/MM/DD') as hiredate,
    count(nvl2(e2.empno, e1.empno,null)) count
    from emp e1, emp e2
    where e1.hiredate > e2.hiredate(+)
    group by e1.empno, e1.ename, e1.hiredate
    order by 4;
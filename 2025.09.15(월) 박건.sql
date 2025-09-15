select * from student;
select * from score;
select * from hakjum;
select s.name, sc.total, h.grade from student s, score sc, hakjum h where sc.studno=s.studno and sc.total>=h.min_point and sc.total<=h.max_point;

select s.name, sc.total, h.grade from student s, score sc, hakjum h 
    where sc.studno=s.studno and
    sc.total >= h.min_point and sc.total <= h.max_point;


select * from student;
select * from professor;
select s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p where s.profno=p.profno(+);

select s.name, p.name from student s, professor p where s.profno(+)=p.profno union;
select s.name "STU_NAME", p.name "PROF_NAME" from professor p left outer join student s on s.profno=p.profno;

select s.name, p.name from student s, professor p 
    where s.profno(+)=p.profno 
    union all
    select s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p
    where s.profno=p.profno(+);
select s.name "STU_NAME", p.name "PROF_NAME" from
    student s full outer join professor p on s.profno=p.profno;

select s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p
    where s.profno=p.profno(+);
    
select s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p
    where s.profno=p.profno;

select s.name "STU_NAME", p.name "PROF_NAME" from student s join professor p on s.profno=p.profno;
select s.name "STU_NAME", p.name "PROF_NAME" from
    student s full outer join professor p on s.profno=p.profno;
select s.name "STU_NAME", p.name "PROF_NAME" from professor p left outer join student s on s.profno=p.profno;

select * from emp;
select e1.empno, e1.ename, e1.mgr, e2.ename from emp e1, emp e2
    where e1.empno=e2.mgr;
























































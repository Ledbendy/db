create table dept3
as
select * from dept2;
select * from dept3;

create table dept4
as
select dcode,dname from dept2;
select * from dept4;

drop table dept6;
create table dept5
as
select * from dept2 where dcode=1002;
select * from dept2 where dcode=1002;
select * from dept5;

create table dept6
as
select dcode,dname from dept2 where dcode in(1000,1001,1002);
select * from dept6;
alter table dept6
add(location varchar2(10));
alter table dept6
add(location2 varchar2(10) default 'SEOUL');

create table dept7
as
select * from dept2 where 1=2;
select * from dept7;

desc dept7;

alter table dept7
add(location varchar2(10));

alter table dept7 rename column location to loc;
select * from dept7;
rename dept7 to dept6;

alter table dept7 modify(loc varchar2(20));
desc dept7;
alter table dept7 drop column loc;
alter table dept7 drop column location cascade constraints;

create table dept6
as
select * from dept7;
select * from dept7;

truncate table dept6;

drop table dept7;
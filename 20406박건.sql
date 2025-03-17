create table tcicy
(
name char(10) primary key,
area int null ,
popu int null ,
metro char(1) not null,
region char(6) not null
);

insert into tcicy values ('서울',605,974,'y','경기');
insert into tcicy values ('부산',765,342,'y','경상');
insert into tcicy values ('오산',42,21,'n','경기');
insert into tcicy values ('청주',940,86,'n','충청');
insert into tcicy values ('전주',205,65,'n','전라');
insert into tcicy values ('순천',910,27,'n','전라');
insert into tcicy values ('춘천',1116,27,'n','강원');
insert into tcicy values ('홍천',1819,7,'n','강원');

select * from tcicy;

commit;
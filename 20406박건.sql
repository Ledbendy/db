create table tcicy
(
name char(10) primary key,
area int null ,
popu int null ,
metro char(1) not null,
region char(6) not null
);

insert into tcicy values ('����',605,974,'y','���');
insert into tcicy values ('�λ�',765,342,'y','���');
insert into tcicy values ('����',42,21,'n','���');
insert into tcicy values ('û��',940,86,'n','��û');
insert into tcicy values ('����',205,65,'n','����');
insert into tcicy values ('��õ',910,27,'n','����');
insert into tcicy values ('��õ',1116,27,'n','����');
insert into tcicy values ('ȫõ',1819,7,'n','����');

select * from tcicy;

commit;
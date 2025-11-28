create table book
(book_id number(5) not null,
category varchar2(10) not null,
author_id number(5) not null,
price number(10) not null,
published_date date not null);

select * from book;

create table author
(author_id number(5) not null,
author_name varchar2(10) not null);

select * from author;

insert into book values(1,'인문',1,10000,'2020-01-01');
insert into book values(2,'경제',1,9000,'2020-01-01');
insert into book values(3,'경제',2,11000,'2020-01-01');
insert into book values(4,'인문',3,10000,'2020-01-01');
insert into book values(5,'생활',2,12000,'2020-01-01');


insert into author values(1,'홍길동');
insert into author values(2,'김영호');
insert into author values(3,'이현정');
insert into author values(4,'김균도');

select book_id 도서id, published_date 출판일
from book
where category='인문' and to_char(published_date,date,'YYYY')=2021
group by asc;
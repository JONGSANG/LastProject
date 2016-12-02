select * from schadul;
drop table schadul;

create table schadul(
year varchar(10) not null,
month varchar(10) not null,
day varchar(10) not null,
state integer(10) not null,				
title varchar(500) not null
);

insert into schadul(year,month,day,state,title) values('2016', '12','6',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','13',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','20',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','27',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '11', '13',2,'과학교실');
insert into schadul(year,month,day,state,title) values('2016', '11', '16',3,'도서관 1주년');

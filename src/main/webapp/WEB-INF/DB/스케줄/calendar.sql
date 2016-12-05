select * from schadul;
drop table schadul;

create table schadul(
year varchar(10) not null,
month varchar(10) not null,
day varchar(10) not null,
state integer(10) not null,				
title varchar(500) not null
);

insert into schadul(year,month,day,state,title) values('2016', '12','06',3,'도서관 오픈');
insert into schadul(year,month,day,state,title) values('2016', '12','07',3,'홈페이지 리뉴얼 행사');
insert into schadul(year,month,day,state,title) values('2016', '12','13',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','20',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','27',1,'도서관 휴관');

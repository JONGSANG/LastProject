select * from late;
drop table late;

--------------------------------------------------------------
--연체자 아이디
--책넘버
--연체시작일
--연체정산일
--금액
--------------------------------------------------------------

CREATE TABLE late(
ID varchar(50),
BNO varchar(50) ,
START_DATE DATE,
END_DATE DATE,
MONEY integer,

constraint pk_late primary key(bno)
);




insert into late values('y','1','2016/11/15','2016/11/20',0);
insert into late values('y1','2','2016/11/14','2016/11/20',0);
insert into late values('y2','3','2016/11/12','2016/11/20',0);


select * from reserve;
drop table reserve;

CREATE TABLE RESERVE_BOOK (
BNO varchar(20) ,
ID varchar(50),
RESERVE_DATE DATE,
RESERVE_END DATE,

constraint pk_BOOK primary key(BNO)
);
--CREATE TABLE reserve(
--BNO varchar(20) ,
--ID varchar(50),
--RESERVE_DATE DATE, 예약 날짜
--constraint pk_BOOK primary key(BNO)
--);
------------------------------------

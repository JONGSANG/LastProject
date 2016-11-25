select * from reserve_book
drop table reserve_book;

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
--RESERVE_END, 나중에 구현할거
--constraint pk_BOOK primary key(BNO)
--);
------------------------------------

INSERT INTO RESERVE_BOOK(BNO, ID, RESERVE_DATE) values('01010012', 'choirj91', '2016-11-18');
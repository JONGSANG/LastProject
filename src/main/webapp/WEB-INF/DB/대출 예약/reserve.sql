select * from reserve_book
drop table reserve_book;
select a.bNO,  b.brent , btitle, bWriter, bCompany, bIntro, buy_date, bLocation, bYear ,c.submit_date,d.reserve_date
from book a 
inner join room_b b on a.bno = b.bno 
left join rent_book c on a.bno=c.bno and check_submit=false
left join reserve_book d on a.bno=d.bno

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
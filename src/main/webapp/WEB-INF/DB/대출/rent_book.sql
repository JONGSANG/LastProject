select * from RENT_BOOK;
drop table RENT_BOOK;

delete from RENT_BOOK;

SELECT l.id, l.bno, b.btitle, l.start_date, l.end_date, u.name, b.bcompany, l.money, b.bwriter
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
order by l.bno desc



select count(a.bNO)
from book a 
inner join room_b b on a.bno = b.bno 
where  bLocation > 0
and a.bno not LIKE '99%' 
and buy_date between '2012-01-01' and '2016-11-11'

update rent_book set submit_date = '2016-11-23' where bno = '01010032' and id = 'spurs89'
update rent_book set submit_date = '2016-11-12' where bno = '05010013' and id = 'spurs891'

delete from rent_book where bno = '01010011'
--------------------------------------------------------------
-- RENT_BOOK : RENT_BOOK 정보 Table
-- INSERT 할시, RENT_DATE 값에 +15 를 SUBMIT_DATE 에 넣을것.
-----------------
--CREATE TABLE RENT_BOOK(
--BNO varchar(50) , 책번호
--ID varchar(50), 사용자아이디
--RENT_DATE DATE, 빌린날짜
--SUBMIT_DATE DATE, 반납 날짜 ...... 더 자세한 설명이 필요함?
--
--constraint pk_RENT_BOOK primary key(BNO)
--
--);
-----------------------------------------------



CREATE TABLE RENT_BOOK(
BNO varchar(50) ,
ID varchar(50),
RENT_DATE DATE,
SUBMIT_DATE DATE,
check_submit boolean default false,
check_late boolean default false
);


alter table rent_book add check_late boolean default false

SELECT ID FROM RENT_BOOK WHERE BNO='01010011' AND CHECK_SUBMIT IS FALSE


INSERT INTO RENT_BOOK(BNO, ID, RENT_DATE, SUBMIT_DATE) VALUES('0112', 'test', '2016-10-18', '2016-11-02')


INSERT INTO RENT_BOOK(BNO, ID, RENT_DATE, SUBMIT_DATE) VALUES('01010012', 'choirj91', '2016-11-18', '2016-12-02')
INSERT INTO RENT_BOOK(BNO, ID, RENT_DATE, SUBMIT_DATE) VALUES('99011503', 'ksh', '2016-11-18', '2016-12-02')

SELECT R.RENT_DATE, R.SUBMIT_DATE, R.SUBMIT, B.BTITLE
FROM RENT_BOOK R
INNER JOIN BOOK B ON R.BNO=B.BNO
WHERE R.ID='choirj91'


		update rent_book set check_late=true where datediff(curdate(), submit_date)>0

책이름/ 예약일/ 반납예정일/ 예약만료일 / 예약 순위 / 상태 / 상태 취소 

SELECT R.RENT_DATE, R.SUBMIT_DATE, RB.BRENT, B.BTITLE
FROM RENT_BOOK R
INNER JOIN BOOK B ON R.BNO=B.BNO 
INNER JOIN ROOM_B RB ON B.BNO=RB.BNO
WHERE R.ID='ksh'



update rent_book set check_late=false 
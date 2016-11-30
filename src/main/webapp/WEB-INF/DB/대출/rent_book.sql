select * from RENT_BOOK;
drop table RENT_BOOK;

delete from RENT_BOOK;


update rent_book set submit_date = '2016-11-22' where bno = '01010011' and id = 'spurs89'
update rent_book set submit_date = '2016-11-22' where bno = '01010012' and id = 'spurs89'

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
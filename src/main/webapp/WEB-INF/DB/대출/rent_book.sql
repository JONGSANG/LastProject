select * from RENT_BOOK;
drop table RENT_BOOK;

SELECT COUNT(BNO) 
FROM RESERVE_BOOK 
WHERE BNO='01020011'

select* from reserve_book

select reserve_date, reserve_end, a.bno, b.btitle
from reserve_book a
inner join book b on a.bno=b.bno and a.id='spurs892'
inner join rent_book c on a.bno=c.bno and check_submit = false


select b.btitle ,r.reserve_date, r.reserve_end, rb.submit_date
from reserve_book r
inner join book b on r.bno=b.bno
inner join rent_book rb on r.bno=rb.bno and check_submit=false
where r.id = 'spurs892'


delete from reserve_book where reserve_end=curdate()

select exists(select bno from reserve_book where bno='01010012')


delete from delivery where bno='01010sdfdsf1'


update rent_book set submit_date = '2016-11-23' where bno = '01020012' and id = 'spurs89'
update rent_book set submit_date = '2016-11-19' where bno = '01010013' and id = 'spurs891'
SELECT count(distinct l.id) cntLateUser
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null


select 
(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE Month(l.end_date) = Month(now()) 
) as subMtotal,
(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is not null
) as subTotal,
(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
) as nsubTotal


SELECT count(*)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id

SELECT count(*)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null


delete from RENT_BOOK;

SELECT count(l.id) cntLateUser
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null




select * from late
SELECT  FORMAT((l.money)/100,0) topLateUserDay, l.id, u.name, count(*) cntLateUser
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
and l.money=(select max(l.money) FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null)

select 
(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE Month(l.end_date) = Month(now()) 
) as subMtotal,
(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is not null
) as subTotal,
(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
) as subTotal

(SELECT sum(l.money)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
) subTotal,
(SELECT l.id
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
and l.money=MAX(l.money)
) topLateUserName,
(SELECT  FORMAT((l.money)/100,0) topLateUserDay, l.id, u.name
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
and l.money=(select max(l.money) FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null)
) topLateUserDay,
SELECT * 
    FROM EMP2
    WHERE SAL = (SELECT MAX(SAL)AS SAL FROM EMP2)


	private String topLateUserID; //제일 오래 연체한 사람 아이디
	private String topLateUserName; //제일 오래 연체한 사람 이름



select convert(char(7),DATEADD(mm,-1,getdate()),121)+'-01' 

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
check_late boolean default false,
delay tinyint DEFAULT 0

);

--delay 0은 반납연기가능 1은 연기불가
alter table rent_book add delay tinyint DEFAULT 0


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
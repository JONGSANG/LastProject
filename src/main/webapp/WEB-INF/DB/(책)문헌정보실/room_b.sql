select * from room_b;
drop table room_b;



update rent_book set submit_date='2016-11-22' where bno='01010021' and id = 'spurs89'

UPDATE ROOM_B SET BRENT=-1 , BRENT_CNT=BRENT_CNT+1 
WHERE BNO='01010011'



SELECT R.RENT_DATE , R.SUBMIT_DATE, B.BTITLE, B.BNO, check_submit,check_Late, brent, l.money as money
FROM RENT_BOOK R
INNER JOIN BOOK B ON R.BNO=B.BNO 
INNER JOIN ROOM_B RB ON R.BNO=RB.BNO
LEFT JOIN LATE L ON R.BNO=L.BNO and submit_date=start_date
WHERE RB.BRENT=-1 
AND R.CHECK_SUBMIT = false
AND R.ID='spurs89'



update rent_book set check_submit = true where bno='01010012'

--------------------------------------------------------------
-- room_b : room_b 정보 Table


-- bno 생성 방법
-- 대분류/소분류/인덱스
-- ex) 10 11 0001

--------------------------------------------------------------
--
--CREATE TABLE room_b(
--BNO varchar(20) , 책번호만 저장합니다.
--BRENT tinyint, 책 대출 여부 1. 대출가능 -1. 대출중
--constraint pk_room_b primary key(BNO)
--);
--베스트 대출도서에서도 대출 카운트를 세어와야함..................
--대출할때마다 카운트 증가
CREATE TABLE room_b(
BNO varchar(20) ,
BRENT tinyint default 1,
BRENT_CNT integer default 0,
constraint pk_room_b primary key(BNO),
constraint fk_room_b foreign key(BNO) references book(bno) on delete cascade on update cascade
);

-- book 테이블의 bno만 빼와서 넣는 쿼리.
INSERT INTO room_b(bno)
SELECT bno
FROM book;

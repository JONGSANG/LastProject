select * from room_b;
drop table room_b;

select * from late 
SELECT COUNT(BNO) FROM room_b WHERE BNO='d' and BRENT=1

select * from book where bno like CONCAT('04','01','%')
	
SELECT l.id, l.bno, b.btitle, l.start_date, l.end_date, u.name, b.bcompany, l.money, b.bwriter
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id
WHERE l.end_date is null
		
SELECT count(*)
FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id

--------------------------------------------------------------
-- room_b : room_b 정보 Table


-- bno 생성 방법
-- 대분류/소분류/인덱스
-- ex) 10 11 0001

--------------------------------------------------------------
--
--CREATE TABLE room_b(
--BNO varchar(20) , 책번호만 저장합니다.
--BRENT tinyint, 책 대출 여부 1. 대출가능 -1. 대출중 0.대출 예약 
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


UPDATE ROOM_B SET BRENT=-1 , BRENT_CNT=+1 
WHERE BNO='01010011'






insert into room_b(bno, brent, brent_cnt) values('01010011', 1, 0);
insert into room_b(bno, brent, brent_cnt) values('01010012', 1, 0);
insert into room_b(bno, brent, brent_cnt) values('99011503', 1, 0);

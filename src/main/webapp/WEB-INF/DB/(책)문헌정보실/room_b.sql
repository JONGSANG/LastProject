select * from room_b;
drop table room_b;

--------------------------------------------------------------
-- room_b : room_b 정보 Table


-- bno 생성 방법
-- 대분류/소분류/인덱스
-- ex) 10 11 0001

--------------------------------------------------------------
--
--CREATE TABLE room_b(
--BNO varchar(20) , 책번호만 저장합니다.
--
--constraint pk_room_b primary key(BNO)
--);

CREATE TABLE room_b(
BNO varchar(20) ,

constraint pk_room_b primary key(BNO)
);

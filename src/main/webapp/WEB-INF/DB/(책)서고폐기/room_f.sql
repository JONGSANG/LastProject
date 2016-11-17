select * from room_f;
drop table room_f;

select * from minwon_rep where mnum=15
	order by num desc
	limit #{pageStart}, #{perPageNum}

--------------------------------------------------------------
-- room_f : room_f 정보 Table


-- bno 생성 방법
-- 대분류/소분류/인덱스
-- ex) 10 11 0001

--------------------------------------------------------------
--
--CREATE TABLE room_f(
--BNO varchar(20) , 책번호
--F_DATE DATE,  버려진 날짜.
--constraint pk_room_f primary key(BNO)
--);

CREATE TABLE room_f(
BNO varchar(20),
F_DATE DATE,

constraint pk_room_f primary key(BNO)
);

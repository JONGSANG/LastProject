select * from BOOK;
drop table BOOK;

--------------------------------------------------------------
-- BOOK : BOOK 정보 Table


-- bno 생성 방법
-- 대분류/소분류/인덱스
-- ex) 10 11 0001

--------------------------------------------------------------
--
--CREATE TABLE BOOK(
--BNO varchar(20) , 책번호.
--BTITLE varchar(100), 책이름
--BWRITER varchar(50), 작가
--BCOMPANY varchar(50), 출판사
--BINTRO text,	-- 책설명 요약
--BYEAR year(4), -- 출판년도
--BUY_DATE DATE, -- 구매날짜.
--BLOCATION tinyint DEFAULT 1, -- 책 비치 위치 1.문헌정보실(열람실) -1.서고..(폐기) 
--
--
--constraint pk_BOOK primary key(BNO)
--);

CREATE TABLE BOOK(
BNO varchar(20) ,
BTITLE varchar(100),
BWRITER varchar(50),
BCOMPANY varchar(50),
BINTRO text,
BYEAR year(4),
BUY_DATE DATE,
BLOCATION tinyint DEFAULT 1, 


constraint pk_BOOK primary key(BNO)
);

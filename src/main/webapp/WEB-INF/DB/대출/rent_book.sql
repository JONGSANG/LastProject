select * from RENT_BOOK;
drop table RENT_BOOK;

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
submit boolean default false,
constraint pk_RENT_BOOK primary key(BNO)

);

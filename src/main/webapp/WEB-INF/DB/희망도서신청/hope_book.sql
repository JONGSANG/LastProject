select * from HOPE_BOOK;
drop table HOPE_BOOK;

--------------------------------------------------------------
-- HOPE_BOOK : HOPE_BOOK 게시판 정보 Table
-- 
--------------------------------------------------------------
--
--
--create sequence HOPE_BOOK_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE HOPE_BOOK(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--BNAME varchar2(100), -- 책제목
--BWRITER varchar2(50), -- 구매할책 작가
--BCOMPANY varchar2(50), -- 구매할책 출판사요요요요요
--BINTRO varchar2(2000), -- 구매할책에대한 소개? 왜필요한지 이유?
--BYEAR varchar2(50), -- 출판년도
--HOPE_DATE DATE,	--신청 날짜
--VIEWCNT number default 0, -- 이쯤되면 알아보겟지 이건 
--
--constraint pk_HOPE_BOOK primary key(NUM),
--constraint fk_HOPE_BOOK foreign key(ID) REFERENCES member(ID)
--);


CREATE TABLE HOPE_BOOK(
NUM integer auto_increment, 
ID varchar(50),
BNAME varchar(200),
BWRITER varchar(50),
BCOMPANY varchar(100),
BINTRO text,
BYEAR year(4),
HOPE_DATE DATETIME,
VIEWCNT integer default 0,

constraint pk_HOPE_BOOK primary key(NUM)
);
--constraint fk_HOPE_BOOK foreign key(ID) REFERENCES member(ID) on delete cascade on update cascade


select id, bName, bIntro, id, hope_Date, viewcnt, bWriter, bYear, bCompany, (select count(num) 
                                             from HOPE_BOOK_rep a 
                                             where a.hnum = b.num ) as re_cnt
   from HOPE_BOOK b
   order by num desc


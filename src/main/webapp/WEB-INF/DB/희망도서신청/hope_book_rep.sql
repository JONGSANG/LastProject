select * from hope_book_rep;
drop table hope_book_rep;

--------------------------------------------------------------
-- hpe_book_rep : hpe_book_rep 게시판 정보 Table
-- 
--------------------------------------------------------------
--
--create sequence hpe_book_rep_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE hpe_book_rep(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--HNUM number, -- 댓글을 달 글에 대한 번호
--MTITLE varchar2(100), -- 답글제목
--MCONTENT varchar2(2000),
--MIN_DATE DATE, -- 작성날짜와 시간.
--VIEWCNT number default 0,
--
--constraint pk_hpe_book_rep primary key(NUM),
--constraint fk_hpe_book_rep foreign key(mnum) REFERENCES minwon(num)
--
--
--);


CREATE TABLE hope_book_rep(
NUM integer auto_increment,
ID varchar(50),
HNUM integer, 
TITLE varchar(200),
CONTENT text,
rep_DATE DATETIME,

constraint pk_hope_book_rep primary key(NUM),
constraint fk_hope_book_rep foreign key(hnum) REFERENCES hope_book(num) on delete cascade on update cascade


);

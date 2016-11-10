select * from minwon;
drop table minwon;

--------------------------------------------------------------
-- minwon : minwon 게시판 정보 Table
-- 
----------------------------------------------------------------
--
--
--create sequence minwon_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE minwon(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--MSELECT varchar2(50), -- 민원 종류 구분
--MTITLE varchar2(100), -- 민원 글제목
--MCONTENT varchar2(2000), -- 내용이다요
--MIN_DATE DATE, -- 작성날짜 
--VIEWCNT number default 0,
--
--constraint pk_minwon primary key(NUM)
--);

CREATE TABLE minwon(
NUM integer auto_increment,
ID varchar(50), 
MSELECT varchar(50),
TITLE varchar(200),
CONTENT text,
MIN_DATE DATE, 
VIEWCNT integer default 0,

constraint pk_minwon primary key(NUM)
);



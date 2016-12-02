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

-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
-- 민원 MSELECT 는 셀렉트 옵션이나 이런걸 이용해서 골라서 넣는거면 좋겠음.
-- 열람실, 노트북실, 문헌정보실, 기타 이런거 선택하게 하는거임~
insert into minwon(ID,MSELECT,title,content,min_date) values('kosta2', '열람실','말이됩니까?', '열람실에서 밥을 먹네요. 미친건가요??',now());
insert into minwon(ID,MSELECT,title,content,min_date) values('kosta3', '기타', '사서누나가.. 너무','사서누나가 너무 이뻐요!! ♡',now());

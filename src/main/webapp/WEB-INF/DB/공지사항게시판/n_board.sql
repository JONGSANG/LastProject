select * from n_board;
drop table n_board;

--------------------------------------------------------------
-- n_board : n_board 게시판 정보 Table
--------------------------------------------------------------
--
--
--create sequence n_board_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE n_board(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--TITLE varchar2(100), -- 공지사항 글제목
--CONTENT varchar2(2000), -- 내용
--WRITE_DATE DATE, -- 작성날짜
--VIEWCNT number default 0, 조회수
--
--constraint pk_n_board primary key(NUM)
--);


CREATE TABLE n_board(
NUM integer auto_increment ,
ID varchar(50), 
TITLE varchar(200),
CONTENT text,
WRITE_DATE DATETIME,
VIEWCNT integer default 0,

constraint pk_n_board primary key(NUM)
);


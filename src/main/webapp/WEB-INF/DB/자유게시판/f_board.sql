select * from f_board;
drop table f_board;

--------------------------------------------------------------
-- f_board : f_board 게시판 정보 Table
--------------------------------------------------------------
--
--
--create sequence f_board_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE f_board(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--TITLE varchar2(100), -- 문화행사 글제목
--CONTENT varchar2(2000), -- 내용
--WRITE_DATE DATE, -- 작성날짜
--VIEWCNT number default 0,
--
--constraint pk_f_board primary key(NUM)
--);


CREATE TABLE f_board(
NUM integer auto_increment ,
ID varchar(50), 
TITLE varchar(200),
CONTENT text,
WRITE_DATE DATETIME,
VIEWCNT integer default 0,

constraint pk_f_board primary key(NUM)
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into f_board(ID,title,content,write_date) values('kosta2', 'DB 넣어줬으니까 열심히해', '아오 아오 귀찮긴 하다..',now())
insert into f_board(ID,title,content,write_date) values('kosta3', '근데 진짜 귀찮긴 하다..', '아오 아오 귀찮긴 하다..',now())

select * from f_board_rep;
drop table f_board_rep;

--------------------------------------------------------------
-- f_board_rep : f_board_rep 게시판 정보 Table
-- 
--------------------------------------------------------------
--
--create sequence f_board_rep_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE f_board_rep(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--MNUM number, -- 댓글을 달 글에 대한 번호
--MTITLE varchar2(100), -- 답글제목
--MCONTENT varchar2(2000),
--MIN_DATE DATE, -- 작성날짜
--VIEWCNT number default 0,
--
--constraint pk_f_board_rep primary key(NUM),
--constraint fk_f_board_rep foreign key(mnum) REFERENCES minwon(num)
--
--
--);


CREATE TABLE f_board_rep(
NUM integer auto_increment,
ID varchar(50),
FNUM integer, 
TITLE varchar(200),
CONTENT text,
rep_DATE DATETIME,

constraint pk_f_board_rep primary key(NUM),
constraint fk_f_board_rep foreign key(Fnum) REFERENCES f_board(num) on delete cascade on update cascade
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into f_board_rep(ID,FNUM,title,content,rep_date) values('kosta2', 1, '1번글 리플', '1번글 첫번째 리플임..',now())
insert into f_board_rep(ID,FNUM,title,content,rep_date) values('kosta2', 1, '1번글 리플2', '1번글 두번째 리플임..',now())
insert into f_board_rep(ID,FNUM,title,content,rep_date) values('kosta2', 2, '2번글 리플', '2번글 첫번째 리플임..',now())


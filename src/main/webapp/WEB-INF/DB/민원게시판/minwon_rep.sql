select * from minwon_rep;
drop table minwon_rep;

--------------------------------------------------------------
-- minwon_rep : minwon_rep 게시판 정보 Table
-- 
--------------------------------------------------------------
--
--create sequence minwon_rep_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE minwon_rep(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--MNUM number, -- 민원 글에 대한 번호
--TITLE varchar2(100), -- 민원 답글제목
--CONTENT varchar2(2000),
--MIN_DATE DATE, -- 작성날짜
--VIEWCNT number default 0,
--
--constraint pk_minwon_rep primary key(NUM),
--constraint fk_minwon_rep foreign key(mnum) REFERENCES minwon(num)
--
--
--);


CREATE TABLE minwon_rep(
NUM integer auto_increment,
ID varchar(50),
MNUM integer, 
TITLE varchar(200),
CONTENT text,
MIN_DATE DATETIME, -- 작성날짜

constraint pk_minwon_rep primary key(NUM),
constraint fk_minwon_rep foreign key(mnum) REFERENCES minwon(num)  on delete cascade on update cascade 
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into minwon_rep(ID,MNUM,title,content,MIN_DATE) values('kosta', 1,'답변입니다.', '불편을 드려서 죄송합니다. 빠른 조치를 취하도록 하겠습니다.',now());
insert into minwon_rep(ID,MNUM,title,content,MIN_DATE) values('kosta', 2, '답변입니다.','그건 저도 아는 부분입니다. 감사합니다 ^^ ',now());




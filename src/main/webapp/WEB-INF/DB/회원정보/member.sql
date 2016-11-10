select * from member;
drop table member;

--------------------------------------------------------------
-- member : Login Table
--------------------------------------------------------------

CREATE TABLE member(
ID varchar(50) ,
NAME varchar(50),
PWD varchar(100),

constraint pk_member primary key(ID)
);

delete from member where id = 'kosta3';
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into member values('kosta1', '준회원1', 'kosta1'); -- 준회원
insert into member values('kosta2', '정회원2', 'kosta2'); -- 정회원
insert into member values('kosta3', '장애회원', 'kosta3'); -- 정회원
insert into member values('kosta4', '이용정지회원', 'kosta4'); -- 이용정지회원
insert into member values('kosta', '관리자', 'kosta'); -- 관리자


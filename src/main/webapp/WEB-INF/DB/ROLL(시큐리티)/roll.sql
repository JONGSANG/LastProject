select * from ROLL;
drop table ROLL;

--------------------------------------------------------------
-- ROLL : ROLL 정보 Table
--
-- ROLL_ADMIN		-- 관리자
-- ROLL_USER		-- 정회원
-- ROLL_SEMIUSER	-- 준회원
-- ROLL_BLACK		-- 이용 정지 회원
--------------------------------------------------------------

CREATE TABLE ROLL(
ID varchar(50) ,
ROLL varchar(100),

constraint fk_ROLL foreign key(ID) references member(ID)
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------

insert into ROLL values('kosta', 'ROLL_ADMIN');
insert into ROLL values('kosta', 'ROLL_USER');
insert into ROLL values('kosta1', 'ROLL_SEMIUSER');
insert into ROLL values('kosta2', 'ROLL_USER');
insert into ROLL values('kosta3', 'ROLL_USER');
insert into ROLL values('kosta4', 'ROLL_BLACK');
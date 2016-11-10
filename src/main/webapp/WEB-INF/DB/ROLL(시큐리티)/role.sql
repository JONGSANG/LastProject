select * from ROLE;
drop table ROLE;

--------------------------------------------------------------
-- ROLE : ROLE 정보 Table
--
-- ROLE_ADMIN		-- 관리자
-- ROLE_USER		-- 정회원
-- ROLE_SEMIUSER	-- 준회원
-- ROLE_BLACK		-- 이용 정지 회원
--------------------------------------------------------------

CREATE TABLE ROLE(
ID varchar(50) ,
ROLE varchar(100),

constraint fk_ROLE foreign key(ID) references member(ID)
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------

insert into ROLE values('kosta', 'ROLE_ADMIN');
insert into ROLE values('kosta', 'ROLE_USER');
insert into ROLE values('kosta1', 'ROLE_SEMIUSER');
insert into ROLE values('kosta2', 'ROLE_USER');
insert into ROLE values('kosta3', 'ROLE_USER');
insert into ROLE values('kosta4', 'ROLE_BLACK');
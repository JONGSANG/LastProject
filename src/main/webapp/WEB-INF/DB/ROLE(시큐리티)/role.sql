select * from ROLE;
drop table ROLE;
--------------------------------------------------------------
-- ROLE : ROLE 정보 Table
--
-- ROLE_ADMIN		-- 관리자
-- ROLE_USER		-- 정회원
-- ROLE_SEMIUSER	-- 준회원
--------------------------------------------------------------

CREATE TABLE ROLE(
ID varchar(50) not null,
ROLE varchar(100) DEFAULT 'ROLE_SEMIUSER' not null,

constraint fk_ROLE foreign key(ID) references member(ID)
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
delete from role where id = 'choirj91'

insert into ROLE values('choirj91', 'ROLE_MASTER');
insert into ROLE values('kosta', 'ROLE_USER');
insert into ROLE values('kosta1', 'ROLE_SEMIUSER');
insert into ROLE values('kosta2', 'ROLE_USER');
insert into ROLE values('kosta3', 'ROLE_USER');
insert into ROLE values('kosta4', 'ROLE_USER');
insert into ROLE values('ksh', 'ROLE_USER');
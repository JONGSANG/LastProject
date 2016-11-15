select * from admin_info;
drop table admin_info;

--------------------------------------------------------------
-- admin_info : admin 정보 Table
--------------------------------------------------------------
--
--CREATE TABLE admin_info(
--ID varchar(50) ,
--NAME varchar(50),
--BIRTH varchar(50),
--GENDER varchar(20),
--PHONE varchar(50),
--EMAIL varchar(200),
--ADDRESS varchar(500),
--J_PART varchar(50),	 부서
--J_LEVEL varchar(50),	 직급
--
--constraint pk_admin_info primary key(ID)
--);

CREATE TABLE admin_info(
ID varchar(50) not null,
NAME varchar(50) not null,
BIRTH DATE not null,
GENDER varchar(20) not null,
PHONE varchar(100) not null,
EMAIL varchar(200) not null,
ADDRESS varchar(500) not null,
J_PART varchar(50) not null,
J_LEVEL varchar(50) not null,

constraint pk_admin_info primary key(ID),
constraint fk_admin_info foreign key(ID) references member(ID) on delete cascade on update cascade

);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into admin_info values('kosta', '김김김', '1989-01-01', '여', '010-9630-5717', 'jiyunny_0418@hanmail.net', '서울특별시 성북구 돈암동 동소문동 한신아파트 105동 1405호', '도서관리부', '과장' ); -- 관리자



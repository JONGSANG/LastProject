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
JOINDATE DATE not null,

constraint pk_admin_info primary key(ID),
constraint fk_admin_info foreign key(ID) references member(ID) on delete cascade on update cascade

);

alter table admin_info add joindate DATE not null; 

-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into admin_info values('choirj91', '최낙준', '1991-09-14', '남', '010-5499-2789', 'choirj91@naver.com', '성남시 분당구 구미동', '도서관리부', '과장' ); -- 관리자



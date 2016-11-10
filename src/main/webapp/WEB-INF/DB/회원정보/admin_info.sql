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
ID varchar(50) ,
NAME varchar(50),
BIRTH varchar(50),
GENDER varchar(20),
PHONE varchar(50),
EMAIL varchar(200),
ADDRESS varchar(500),
J_PART varchar(50),
J_LEVEL varchar(50),

constraint pk_admin_info primary key(ID)
);

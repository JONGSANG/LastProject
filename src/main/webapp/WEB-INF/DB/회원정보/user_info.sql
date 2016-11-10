select * from user_info;
drop table user_info;

--------------------------------------------------------------
-- user_info : USER 정보 Table
--------------------------------------------------------------
--
--CREATE TABLE user_info(
--ID varchar(50) ,
--NAME varchar(50),
--BIRTH varchar(50),
--GENDER varchar(20),
--JOB varchar(50),
--PHONE varchar(50),
--EMAIL varchar(200),
--ADDRESS varchar(500),
--handicap tinyint, -- 장애 등급
--
--constraint pk_user_info primary key(ID)
--);

CREATE TABLE user_info(
ID varchar(50) ,
NAME varchar(50),
BIRTH varchar(50),
GENDER varchar(20),
JOB varchar(50),
PHONE varchar(50),
EMAIL varchar(200),
ADDRESS varchar(500),
handicap tinyint,

constraint pk_user_info primary key(ID)
);

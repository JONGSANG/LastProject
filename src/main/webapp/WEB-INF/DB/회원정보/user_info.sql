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
--handicap tinyint, -- 장애 등급 1 이면 아닌거., -1 이면 장애인을 뜻함. 
--
--constraint pk_user_info primary key(ID)
--);

CREATE TABLE user_info(
ID varchar(50) ,
NAME varchar(50),
BIRTH varchar(50),
GENDER varchar(20),
JOB varchar(50),
PHONE varchar(100),
EMAIL varchar(200),
ADDRESS varchar(500),
handicap tinyint,

constraint pk_user_info primary key(ID),
constraint fk_user_info foreign key(ID) references member(ID) on delete cascade on update cascade
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into user_info values('kosta1', '준회원1', '890418', '남', '회사원', '010-2678-8904', 'spurs89@naver.com', '경기도 용인시 수지구 풍덕천동 725-6 꿈에그린빌 202호',1); -- 준회원
insert into user_info values('kosta2', '정회원2', '911218', '남', '대학생', '010-1234-1234', 'IIIdddDDD89@naver.com', '경기도 포천시 일동면 기산서1길 15-1',1); -- 정회원
insert into user_info values('kosta3', '장애회원3', '900101', '남', '회사원', '010-2222-2222', 'test89@naver.com', '서울특별시 강북구 수유3동 풍림아이원 104동 1105호',-1); -- 정회원
insert into user_info values('kosta4', '이용정지', '900101', '남', '회사원', '010-2255-2121', 'test89@naver.com', '동해물과 백두산이 마르고 닳도록',1); -- 이용정지회원


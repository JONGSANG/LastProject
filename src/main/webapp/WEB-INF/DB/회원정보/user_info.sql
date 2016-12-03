select * from user_info;
drop table user_info;

select a.bNO,  b.brent , btitle, bWriter, bCompany, bIntro, buy_date, bLocation, bYear ,c.submit_date
from book a 
inner join room_b b on a.bno = b.bno 
left join rent_book c on a.bno=c.bno and check_submit=false
where a.bNo = '01010013'



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
--ADDRESS varchar(500), 전화번호
--handicap tinyint, -- 장애 등급 1 이면 아닌거., -1 이면 장애인을 뜻함. 
--
--constraint pk_user_info primary key(ID)
--);
 select handicap from user_info where id='spurs894'

CREATE TABLE user_info(
ID varchar(50) not null,
NAME varchar(50) not null,
BIRTH DATE not null,
GENDER tinyint not null,
JOB varchar(50) not null,
PHONE varchar(100) not null,
EMAIL varchar(200) not null,
ADDRESS varchar(500) not null,
handicap tinyint not null,
joindate DATE not null,

constraint pk_user_info primary key(ID),
constraint fk_user_info foreign key(ID) references member(ID) on delete cascade on update cascade
);

alter table user_info add joindate DATE not null; 

-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into user_info values('kosta1', '홍길동', '1990-01-01', '남', '회사원', '010-2678-8904', 'spurs89@naver.com', '경기도 용인시 수지구 풍덕천동 725-6 꿈에그린빌 202호',1);
insert into user_info values('kosta2', '김김김', '2000-01-01', '남', '대학생', '010-1234-1234', 'IIIdddDDD89@naver.com', '경기도 포천시 일동면 기산서1길 15-1',1);
insert into user_info values('kosta3', '박박박', '1990-08-01', '남', '회사원', '010-2222-2222', 'test89@naver.com', '서울특별시 강북구 수유3동 풍림아이원 104동 1105호',-1);
insert into user_info values('kosta4', '최최최', '1990-02-02', '남', '회사원', '010-2255-2121', 'test89@naver.com', '동해물과 백두산이 마르고 닳도록',1);
insert into user_info(ID, NAME, BIRTH, GENDER, JOB, PHONE, EMAIL, ADDRESS, HAnDICAP, JOINDATE) VALUES('ksh', 'ksh', '2011-01-01', '남', '학생', '010-0000-0000', 'kosta@kosta.com', '주소', 1, now())
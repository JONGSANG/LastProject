
select * from culture_list;
drop table culture_list;

--------------------------------------------------------------
-- culture_list : culture_list 신청자 stack 정보 Table
-- 
--------------------------------------------------------------
--
--
--create sequence culture_list_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE culture_list(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 신청자 ID....
--ANUM number, -- 행사 글에 대한 번호
--culture_DATE DATE, -- 신청 날짜
--state smallint default 0, -- 신청 상태 0.대기중 1.승인완료 -1.승인거절 
--
--constraint pk_culture_list primary key(NUM),
--constraint fk_culture_list foreign key(anum) REFERENCES culture(num)
--
--);

CREATE TABLE culture_list(
NUM integer auto_increment,
ID varchar(50),
ANUM integer,
culture_DATE DATETIME, 
state tinyint default 0,

constraint pk_culture_list primary key(NUM),
constraint fk_culture_list foreign key(anum) REFERENCES culture(num) on delete cascade on update cascade

);


select num from culture where num not exists (select anum from culture_list)
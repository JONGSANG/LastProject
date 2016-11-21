
select * from after_list;
drop table after_list;

--------------------------------------------------------------
-- after_list : after_list 신청자 stack 정보 Table
-- 
--------------------------------------------------------------

--
--create sequence after_list_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE after_list(
--NUM int auto_increment, --sequence 넘버 들어갈 곳 
--ID varchar(50), -- 작성자....
--ANUM varchar(50), -- 행사 글에 대한 번호
--after_DATE DATE, -- 신청 날짜
--state tinyint default 0, -- 신청 상태 0.대기중 1.승인완료 -1.승인거절 
--
--constraint pk_after_list primary key(NUM),
--constraint fk_after_list foreign key(anum) REFERENCES after(num)
--
--);


CREATE TABLE after_list(
NUM integer auto_increment, 
ID varchar(50),
ANUM integer, 
after_DATE DATETIME, 
state tinyint default 0, 
constraint pk_after_list primary key(NUM),
constraint fk_after_list foreign key(ANUM) REFERENCES after(NUM) on delete cascade on update cascade
);

select * from after;
drop table after;

--------------------------------------------------------------
-- after : after 게시판 정보 Table
-- 뷰에서 그냥 게시판처럼 리스트를 뿌려주고
-- 그안에 상세보기로 들어가서 이러한 여러 문화행사중에
-- 내가 하고 싶은거를 신청하기 버튼을 누르면 신청 테이블에 들어간다. 
--------------------------------------------------------------

--
--create sequence after_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;

CREATE TABLE after(
NUM INTEGER auto_increment, 
ID varchar(50),
ASELECT varchar(50),
TITLE varchar(100), 
CONTENT varchar(2000),
WRITE_DATE DATETIME default now(),
START_DATE DATE,
END_DATE DATE,
orgname varchar(2000),
newname varchar(2000),

VIEWCNT INTEGER default 0,
max_cnt INTEGER,
TOCNT INTEGER default 0,
constraint pk_after primary key(NUM)
);

SELECT ASELECT, TITLE, MAX_CNT, (SELECT COUNT(ANUM) FROM AFTER_LIST WHERE STATE=1) AS TOCNT FROM AFTER
SELECT COUNT(NUM) FROM AFTER


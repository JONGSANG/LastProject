select * from culture;
drop table culture;

--------------------------------------------------------------
-- culture : culture 게시판 정보 Table
-- 뷰에서 그냥 게시판처럼 리스트를 뿌려주고
-- 그안에 상세보기로 들어가서 이러한 여러 문화행사중에
-- 내가 하고 싶은거를 신청하기 버튼을 누르면 신청 테이블에 들어간다. 
--------------------------------------------------------------

--
--create sequence culture_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE culture(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 작성자....
--SELECT varchar2(50), -- 문화행사 종류 구분 ()
--TITLE varchar2(100), -- 문화행사 글제목
--CONTENT varchar2(2000),
--WRITE_DATE DATE, -- 작성날짜
--START_DATE DATE, -- 행사 시작 날짜
--END_DATE DATE, -- 행사 종료 날짜
--
--VIEWCNT number default 0,
--TOCNT number default 0, -- 행사 가용 인원수
--
--constraint pk_culture primary key(NUM)
--);

CREATE TABLE culture(
NUM integer auto_increment,
ID varchar(50),
CSELECT varchar(50),
TITLE varchar(100),
CONTENT text,
WRITE_DATE DATETIME,
START_DATE DATE,
END_DATE DATE, 

VIEWCNT integer default 0,
TOCNT integer default 0,
constraint pk_culture primary key(NUM)
);




select * from delivery;
drop table delivery;

--------------------------------------------------------------
-- delivery : delivery 게시판 정보 Table
-- 뷰에서 그냥 게시판처럼 리스트를 뿌려주고
-- 사용자는 신청만 할 수 있다..
-- 사용자 정보에 장애인 유무 확인해야함
-- 관리자 페이지에서 리스트로 뿌려줘야함....결국 게시판.


-- 관리자에서 리스트를 뽑을때는
-- 신청자 ID로 주소와 연락처를 빼오고
-- BNO로 책정보를 뽑아야함.
--------------------------------------------------------------
--
--create sequence delivery_SEQ
--	start with 1
--	minvalue 1
--	increment by 1
--;
--
--CREATE TABLE delivery(
--NUM number, --sequence 넘버 들어갈 곳 
--ID varchar2(50), -- 신청자 ID
--BNO varchar2(20) , -- 책번호........ 이걸로 식별.
--REQUEST_DATE DATE, -- 신청날짜
--STATE tinyint --신청상태 0.대기중 1승인 -1거절
--
--constraint pk_delivery primary key(NUM),
--constraint fk_delivery foreign key(ID) REFERENCES USER_INFO(ID),
--constraint fk_delivery2 foreign key(BNO) REFERENCES BOOK(BNO)
--
--);

CREATE TABLE delivery(
NUM integer auto_increment primary key,
ID varchar(50),
BNO varchar(20) ,
REQUEST_DATE DATETIME,
STATE tinyint default 0,
RENT_NUM tinyint

);

SELECT B.BTITLE, R.RENT_DATE, R.SUBMIT_DATE, D.REQUEST_DATE, D.STATE, D.RENT_NUM
FROM DELIVERY D
INNER JOIN RENT_BOOK R ON D.BNO=R.BNO
INNER JOIN BOOK B ON D.BNO=B.BNO
WHERE D.ID='wkddodls1'

SELECT B.BTITLE, R.RENT_DATE, R.SUBMIT_DATE, D.REQUEST_DATE, D.STATE, D.RENT_NUM
FROM DELIVERY D
INNER JOIN RENT_BOOK R ON D.BNO=R.BNO
INNER JOIN BOOK B ON D.BNO=B.BNO
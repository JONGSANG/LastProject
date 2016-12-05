--------------책 테이블 --------------

CREATE TABLE BOOK(
BNO varchar(20) ,
BTITLE varchar(100),
BWRITER varchar(50),
BCOMPANY varchar(50),
BINTRO text,
BYEAR year(4),
BUY_DATE DATE,
BLOCATION tinyint DEFAULT 1, 

constraint pk_BOOK primary key(BNO)
);


----------회원 정보----------

CREATE TABLE member(
ID varchar(50) not null,
PWD varchar(100) not null,
ENABLED boolean DEFAULT TRUE,

constraint pk_member primary key(ID)
);

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

------------시큐리티 등급----------

CREATE TABLE ROLE(
ID varchar(50) not null,
ROLE varchar(100) DEFAULT 'ROLE_SEMIUSER' not null,

constraint fk_ROLE foreign key(ID) references member(ID)
);

----------문헌정보실------------

CREATE TABLE room_b(
BNO varchar(20) ,
BRENT tinyint default 1,
BRENT_CNT integer default 0,
constraint pk_room_b primary key(BNO),
constraint fk_room_b foreign key(BNO) references book(bno) on delete cascade on update cascade
);

----------서고폐기----------

CREATE TABLE room_f(
BNO varchar(20),
F_DATE DATE,

constraint pk_room_f primary key(BNO)
);

--------공개자료실---------

CREATE TABLE o_board(
NUM integer auto_increment, 
ID varchar(50),
TITLE varchar(200), 
CONTENT text,
WRITE_DATE DATETIME default now(),
VIEWCNT integer default 0,
ORGNAME VARCHAR(1000),
NEWNAME VARCHAR(1000),
constraint pk_o_board primary key(NUM)
);

---------공지사항-------------

CREATE TABLE n_board(
NUM integer auto_increment ,
ID varchar(50), 
TITLE varchar(200),
CONTENT text,
WRITE_DATE DATETIME,
VIEWCNT integer default 0,

constraint pk_n_board primary key(NUM)
);

-------------대출------------

CREATE TABLE RENT_BOOK(
BNO varchar(50) ,
ID varchar(50),
RENT_DATE DATE,
SUBMIT_DATE DATE,
check_submit boolean default false,
check_late boolean default false,
delay tinyint DEFAULT 0

);

--------------대출예약----------

CREATE TABLE RESERVE_BOOK (
BNO varchar(20) ,
ID varchar(50),
RESERVE_DATE DATE,
RESERVE_END DATE,

constraint pk_BOOK primary key(BNO)
);

------------도서배달서비스--------

CREATE TABLE delivery(
NUM integer auto_increment primary key,
ID varchar(50),
BNO varchar(20) ,
REQUEST_DATE DATETIME,
STATE tinyint default 0,
RENT_NUM varchar(20)
);

----------문화행사-----------

CREATE TABLE culture(
NUM integer auto_increment,
ID varchar(50),
CSELECT varchar(50),
TITLE varchar(100),
CONTENT text,
WRITE_DATE DATETIME default now(),
START_DATE DATE,
END_DATE DATE, 
orgname varchar(2000),
newname varchar(2000),

VIEWCNT integer default 0,
MAX_CNT INTEGER,
TOCNT integer default 0,
constraint pk_culture primary key(NUM)
);

CREATE TABLE culture_list(
NUM integer auto_increment,
ID varchar(50),
ANUM integer,
culture_DATE DATETIME, 
state tinyint default 0,

constraint pk_culture_list primary key(NUM),
constraint fk_culture_list foreign key(anum) REFERENCES culture(num) on delete cascade on update cascade

);

---------------민원 게시판----------
CREATE TABLE minwon(
NUM integer auto_increment,
ID varchar(50), 
MSELECT varchar(50),
TITLE varchar(200),
CONTENT text,
MIN_DATE DATE, 
VIEWCNT integer default 0,

constraint pk_minwon primary key(NUM)
);

CREATE TABLE minwon_rep(
NUM integer auto_increment,
ID varchar(50),
MNUM integer, 
TITLE varchar(200),
CONTENT text,
MIN_DATE DATETIME, -- 작성날짜

constraint pk_minwon_rep primary key(NUM),
constraint fk_minwon_rep foreign key(mnum) REFERENCES minwon(num)  on delete cascade on update cascade 
);

--------------방과후 -----------------
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

CREATE TABLE after_list(
NUM integer auto_increment, 
ID varchar(50),
ANUM integer, 
after_DATE DATETIME, 
state tinyint default 0, 
constraint pk_after_list primary key(NUM),
constraint fk_after_list foreign key(ANUM) REFERENCES after(NUM) on delete cascade on update cascade
);

-----------스케줄---------
create table schadul(
year varchar(10) not null,
month varchar(10) not null,
day varchar(10) not null,
state integer(10) not null,				
title varchar(500) not null
);

-------------연체--------------
CREATE TABLE late(
ID varchar(50),
BNO varchar(50) ,
START_DATE DATE,
END_DATE DATE,
MONEY integer,

constraint pk_late primary key(bno, start_date)

);

------------열람실---------------
CREATE TABLE STUDYROOM(
	NUM VARCHAR(10) PRIMARY KEY,
	STATE TINYINT NOT NULL,
	START_TIME TIME,
	END_TIME TIME,
	ID VARCHAR(20)
);

-----------자유게시판-----------
CREATE TABLE f_board(
NUM integer auto_increment ,
ID varchar(50), 
TITLE varchar(200),
CONTENT text,
WRITE_DATE DATETIME,
VIEWCNT integer default 0,

constraint pk_f_board primary key(NUM)
);

CREATE TABLE f_board_rep(
NUM integer auto_increment,
ID varchar(50),
FNUM integer, 
TITLE varchar(200),
CONTENT text,
rep_DATE DATETIME,

constraint pk_f_board_rep primary key(NUM),
constraint fk_f_board_rep foreign key(Fnum) REFERENCES f_board(num) on delete cascade on update cascade
);

----------희망도서 신청-------------
CREATE TABLE HOPE_BOOK(
NUM integer auto_increment, 
ID varchar(50),
BNAME varchar(200),
BWRITER varchar(50),
BCOMPANY varchar(100),
BINTRO text,
BYEAR year(4),
HOPE_DATE DATETIME,
VIEWCNT integer default 0,
RESULT integer default 0,

constraint pk_HOPE_BOOK primary key(NUM)
);

CREATE TABLE hope_book_rep(
NUM integer auto_increment,
ID varchar(50),
HNUM integer, 
TITLE varchar(200),
CONTENT text,
rep_DATE DATETIME,

constraint pk_hope_book_rep primary key(NUM),
constraint fk_hope_book_rep foreign key(hnum) REFERENCES hope_book(num) on delete cascade on update cascade


);

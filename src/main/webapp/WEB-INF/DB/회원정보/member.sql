select * from member;
drop table member;

--------------------------------------------------------------
-- member : Login Table
--------------------------------------------------------------

CREATE TABLE member(
ID varchar(50) ,
NAME varchar(50),
PWD varchar(100),

constraint pk_member primary key(ID)
);


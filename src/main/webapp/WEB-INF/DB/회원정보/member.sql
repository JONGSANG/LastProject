select * from member;
drop table member;

--------------------------------------------------------------
-- member : Login Table
--------------------------------------------------------------

CREATE TABLE member(
ID varchar(50) not null,
PWD varchar(100) not null,
ENABLED boolean DEFAULT TRUE,

constraint pk_member primary key(ID)
);
-------------------------------------------------------------
-- test DATA
-------------------------------------------------------------
insert into member values('kosta1', 'kosta1', true); 
insert into member values('kosta2', 'kosta2', true);
insert into member values('kosta3', 'kosta3', true);
insert into member values('kosta4', 'kosta4', true);
insert into member values('kosta', 'kosta', true);

select m.id, u.name , r.role
from member m
inner join user_info u on m.id = u.id 
inner join role r on m.id=r.id
where m.id='';

SELECT M.ID, U.NAME, U.BIRTH, U.EMAIL, U.PHONE, U.JOB, R.ROLE
FROM MEMBER M
INNER JOIN USER_INFO U ON M.ID=U.ID
INNER JOIN ROLE R ON M.ID=R.ID
WHERE M.ID='kosta'
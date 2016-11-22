select * from late;
drop table late;

--------------------------------------------------------------
--연체자 아이디
--책넘버
--연체시작일
--연체정산일
--금액
--------------------------------------------------------------
SELECT COUNT(id) FROM late WHERE end_date is null and id='ksh'

CREATE TABLE late(
ID varchar(50),
BNO varchar(50) ,
START_DATE DATE,
END_DATE DATE,
MONEY integer,

constraint pk_late primary key(bno, start_date)

);




ALTER TABLE late
add constraint pk_late primary key(bno, start_date)

SELECT bno, start_date FROM late b inner join rent_book a on a.bno=b.bno where a.submit_date=b.start_date

SELECT id, bno, SUBMIT_DATE 
		FROM RENT_BOOK a
		where datediff(curdate(),SUBMIT_DATE) > 0
		and not EXISTS (SELECT bno, start_date FROM late b where a.bno=b.bno and a.submit_date=b.start_date)

insert into late values('y','1','2016/11/15','2016/11/20',0);
insert into late values('y1','2','2016/11/14','2016/11/20',0);
insert into late values('y2','3','2016/11/12','2016/11/20',0);

delete from late where id = 'test'

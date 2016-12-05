select * from late;
drop table late;
SELECT check_late FROM rent_book WHERE check_submit = false and bno='012'

SELECT MONEY FROM LATE WHERE end_date is null and bno='01010011'

select * from rent_book
delete from late


		INSERT INTO late(id, bno, start_date)
		SELECT id, bno, SUBMIT_DATE 
		FROM RENT_BOOK a
		where datediff(curdate(),SUBMIT_DATE) > 0 and check_submit = false
		and NOT EXISTS (SELECT bno, start_date FROM late b where a.bno=b.bno and a.submit_date=b.start_date)



SELECT * FROM LATE l
INNER JOIN BOOK b on b.bno = l.bno
INNER JOIN USER_INFO u on u.id = l.id

	INSERT INTO late(id, bno, start_date)
		SELECT id, bno, SUBMIT_DATE 
		FROM RENT_BOOK a
		where datediff(curdate(),SUBMIT_DATE) > 0
		and NOT EXISTS (SELECT bno, start_date FROM late b where a.bno=b.bno and a.submit_date=b.start_date)
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
update constraint pk_late primary key(bno, start_date, ID)

SELECT bno, start_date FROM late b inner join rent_book a on a.bno=b.bno where a.submit_date=b.start_date

SELECT id, bno, SUBMIT_DATE 
		FROM RENT_BOOK a
		where datediff(curdate(),SUBMIT_DATE) > 0
		and not EXISTS (SELECT bno, start_date FROM late b where a.bno=b.bno and a.submit_date=b.start_date)

insert into late values('choirj91','1','2016/11/15','2016/11/20',0);
insert into late values('y1','2','2016/11/14','2016/11/20',0);
insert into late values('y2','3','2016/11/12','2016/11/20',0);

delete from late where id = 'spurs891'

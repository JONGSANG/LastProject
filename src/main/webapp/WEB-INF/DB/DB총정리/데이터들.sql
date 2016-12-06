-----------자유게시판----------

insert into f_board(num, id, title, content, write_date) values(
1, 'admin', '이곳은 자유게시판입니다.',
'                              『이곳은 많은 분들이 자유롭게 이용하는 곳입니다.』
            『더욱 활발하고 의미있는 장소가 될 수 있도록 아래의 규칙을 참고하여 지켜주시기 바랍니다.』

① 스팸글 업로드시 아이디 사용 금지

       - 이상한 스팸글들이 게시판을 어지럽힐 경우 다수의 선량한 사용자들이 피해를 봅니다. 
         이에 스팸글이 올라올 경우, 해당 글을 삭제하는 것은 물론 
         관련 아이디 역시 대상자에게 공지 없이 사용 금지 처리를 하고 있습니다.
         참고해주시기 바랍니다.

② 게시판 성격에 맞지 않는 홍보성 글 업로드시 삭제

       - 교육 분야나 연관된 곳의 재미난 활동 아니면 개인의 의견까지 다양한 글이 올라올 수 있습니다.
         이와 상관없은 홍보나 설문, 종교 관련 글 등의 글은 작성자에 통보없이 삭제할 수 있으니 참고해주십시오.

③ 존중과 예의

       - 글을 작성할 경우 타인의 의견을 존중하고 예의를 지켜주십시오.
         나와 다른 의견이라고 함부로 비방하거나 욕설을 사용치 말아주십시오.
', now());



------------스케줄------------

insert into schadul(year,month,day,state,title) values('2016', '12','06',3,'도서관 오픈');
insert into schadul(year,month,day,state,title) values('2016', '12','07',3,'홈페이지 리뉴얼 행사');
insert into schadul(year,month,day,state,title) values('2016', '12','13',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','20',1,'도서관 휴관');
insert into schadul(year,month,day,state,title) values('2016', '12','27',1,'도서관 휴관');

----------공지사항---------------

insert into n_board(num,ID,title,content,write_date) value(
1,'admin', 'KOSTA도서관 홈페이지가 새롭게 리뉴얼 되었습니다.',
'KOSTA도서관은 2016년 6월 ~ 2016년 12월까지 약 6개월에 거쳐 홈페이지 및

도서관 운영시스템, 그리고 각종 DB에 대한 전면 리뉴얼을 진행 했습니다. 이 중,

홈페이지에 탑재된 새로운 기능 및 개선 사항을 간략하게 소개하고자 합니다.

 

변경사항에 대해 정리해 보면 다음과 같습니다.

① 사용자 편의를 반영한 홈페이지 디자인 및 일반 기능 개선
          * 메인페이지 센터에 KOSTA도서관로고 배치
          * 주요기능을 왼쪽 하단에 아이콘으로 배치
          * 메인페이지에서 원하는 도서관 검색 가능

② 최신 검색엔진 탑재로 인한 검색관련 기능 대폭 개선

③ 별도의 설치가 필요 없는 Proxy system 도입

⑤ 모바일에 최적화된 홈페이지
', now());


insert into n_board(num,ID,title,content,write_date) value(
2,'admin','주민등록번호 수집 법정주의 소개',
'주민번호 수집 원칙적 금지, 유출시 과징금 부과 등을 주요 내용으로 개인정보보호법 개정
(공포 13.8.6일, 시행 14.8.7일)

- 이에 따라, 14.8.7 일부터 법령상 근거 없이 불필요하게 주민번호를 수집하는 행위가 엄격히 제한(위반시과태료부과)

※ 온라인상 주민번호 수집 금지 제도는「정보통신망 이용 촉진 및 정보보호 등에 관한 법률」에 따라 12. 8월부터 旣 시행 중

                                      【주민번호 수집 금지 정책 추진 경과】

▶ 12.4월 : 주민번호 수집이용 최소화 종합대책 마련(행자부, 방통위, 금융위 참여)
▶ 12.8월 : 정보통신서비스제공자 등 온라인상 주민번호 수집 금지 시행(방통위)
▶ 14.8월 : 오프라인 및 공공기관 등 주민번호 수집 금지 시행 예정(행자부)

※개정 개인정보보호법 주요내용
① 주민번호 수집 법정주의 신설 (제24조의2)
     - 주민번호 처리를 원칙적으로 금지하고, 예외적인 경우에만 허용



                                       【주민번호 예외적 처리 허용 사유】

1. 법령(법률·시행령·시행규칙)에서 구체적으로 주민번호 처리를 요구·허용한 경우
2. 정보주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위해 명백히 필요한 경우
3. 기타 주민번호 처리가 불가피한 경우로서 행정자치부령으로 정하는 경우
     - 기 보유한 주민번호는 법 시행 후 2년 이내(16.8.6일까지) 파기

② 주민번호 유출에 대한 ‘과징금 제도’ 신설 (제34조의 2)
     - 주민번호 유출 등이 발생한 경우로서 안전성 확보조치를 하지 않은 경우 최대 5억원 이하의 과징금 부과·징수

③ 대표자(CEO) 등에 대한 징계권고 신설(제65조 제3항)
     - 법규 위반행위에 따라 행정자치부장관의 징계 권고 대상에 대표자(CEO) 및 책임 있는 임원이 포함됨을 명시


※주민번호 수집 금지에 따른 조치사항
① 주민번호 수집 금지 기본원칙
     * 법령상 구체적 근거가 있는 경우에는 현행 유지
     * 법령상 근거는 없으나 주민번호 수집이 불가피한 경우 근거 마련 지원요청
       - (민간사업자/협회) 해당 업종 소관부처에 법령 근거 마련 지원요청
       - (소관부처) 타당성 검토 후 불가피한 경우에 한하여 법령 근거 마련
     * 위 1,2 에 해당하지 않는 경우 주민번호를 수집하지 않도록 전환

② 주민번호 유출에 대한 ‘과징금 제도’ 신설 (제34조의 2)
     * <기준 1> 주민번호 처리 법령 근거 유무
       - 법령(법률, 시행령, 시행규칙)상 주민번호 수집을 구체적으로 허용하는 경우*에는 현행 유지

                                                  (예시)
『법령 조문에서 주민번호 수집을 요구·허용하는 경우, 법정 서식에서 주민번호 기재란이 있는 경우, 
  법령 조문 또는 서식상 주민번호가 포함된 서류(주민등록등,초본 등)를 수집할 수 있도록 허용 하는 경우 등을 말
  함』

     * <기준 2> 불가피성 유무(주민번호 대체 불가능성)
       - 법령상 근거는 없으나 반드시 주민번호를 수집하여야 할 필요가 있는 경우 해당 업무 소관부처를 통해 법령
         근거 마련
       - 주민번호 수집 필요성이 없거나 대체 가능한 경우에는 전화번호 등 다른 수단으로 대체하고, 기 보유 주민번
         호는 파기

                                                  (예시)
『단순 본인확인을 위한 경우, 회원DB 관리를 위한 KEY 값으로 활용하는 경우 등은 주민번호 수집
  필요성이 낮으며 다른 수단으로 대체 가능한 경우에 해당』


※ 지원체계

∵ 대표문의처 : 국번없이 118번
∵ 관련 법제도 상담 및 컨설팅 문의 :jumin@kisa.or.kr
∵ 대체수단 도입 등 기술지원 상담 및 컨설팅 문의 :privacy_support@kisa.or.kr
',now());

insert into n_board(num,ID,title,content,write_date) value(
3,'admin','도서대출 본인확인 강화 운영 안내','
                                       도서대출 본인확인 강화 운영 안내

이용자분들의 회원정보를 더욱 안전하게 보호, 운영하기위해 『도서대출시 비밀번호 확인 절차』가 추가됨을 알려드립니다.

※ 운영일 : 2015년 10월 1일 부터

※ 운영장소 : 자료열람실 도서대출­·반납 창구

※ 운영방법 : ① 도서대출회원증 제시
              ② 대출반납 창구에 구비된 숫자키패드에 대출비밀번호 입력
              ③ 대출비밀번호가 맞을 경우 대출처리

※ 대출비밀번호는 기존 비밀번호와 동일'
,now());

insert into n_board(num,ID,title,content,write_date) value(
4,'admin','KOSTA도서관 12월 운영안내 ',
'                                         KOSTA도서관 12월 운영안내

※ 12월 20일 관내공사 및 전기, 열공급펌프 등의 시설점검으로 도서관 단축운영을 실시할 예정이오니
   도서관이용 여러분은 양해부탁드립니다.

                                             열람실 운영시간
                                  09:00 ~ 22:00 ========>  09:00 ~ 18:00

※ 12월 31일 2016년 도서관 종무식 및 2017년 운영준비로 도서관 단축운영을 실시할 예정이오니
   도서관이용 여러분은 양해 부탁드립니다.

                                           도서관 전체 운영시간
                                  09:00 ~ 22:00 ========> 09:00 ~ 17:00

문의사항은 KOSTA도서관(☎070-5039-5803)으로 연락주시기 바랍니다.
',now());

------------------열람실----------------------

INSERT INTO STUDYROOM(NUM, STATE) VALUES('a01', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a02', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a03', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a04', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a05', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a06', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a07', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a08', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a09', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a10', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a11', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a12', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a13', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a14', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a15', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a16', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a17', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a18', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a19', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a20', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a21', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a22', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a23', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a24', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a25', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a26', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a27', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a28', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a29', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a30', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a31', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a32', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a33', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a34', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a35', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a36', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a37', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a38', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a39', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a40', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a41', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a42', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a43', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a44', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a45', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a46', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a47', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a48', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a49', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a50', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a51', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a52', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a53', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a54', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a55', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a56', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a57', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a58', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a59', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a60', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a61', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('a62', 0);

INSERT INTO STUDYROOM(NUM, STATE) VALUES('b01', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b02', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b03', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b04', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b05', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b06', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b07', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b08', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b09', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b10', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b11', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b12', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b13', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b14', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b15', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b16', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b17', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b18', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b19', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b20', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b21', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b22', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b23', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b24', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b25', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b26', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b27', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b28', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b29', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b30', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b31', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b32', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b33', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b34', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b35', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b36', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b37', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b38', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b39', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b40', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b41', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b42', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b43', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b44', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b45', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b46', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b47', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b48', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b49', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b50', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b51', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b52', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b53', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b54', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b55', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b56', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b57', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b58', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b59', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('b60', 0);


INSERT INTO STUDYROOM(NUM, STATE) VALUES('c01', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c02', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c03', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c04', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c05', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c06', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c07', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c08', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c09', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c10', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c11', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c12', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c13', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c14', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c15', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c16', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c17', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c18', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c19', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c20', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c21', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c22', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c23', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c24', 0);

INSERT INTO STUDYROOM(NUM, STATE) VALUES('c25', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c26', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c27', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c28', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c29', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c30', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c31', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c32', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c33', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c34', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c35', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c36', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c37', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c38', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c39', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c40', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c41', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c42', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c43', 0);
INSERT INTO STUDYROOM(NUM, STATE) VALUES('c44', 0);


------------------발표자료 준비-----------------------


update rent_BOOk set rent_date='2016-11-15', submit_date='2016-11-29' where bno='01030131';
update rent_BOOk set rent_date='2016-11-16', submit_date='2016-11-30' where bno='01030141';
update rent_BOOk set rent_date='2016-11-17', submit_date='2016-11-28' where bno='01030151';
update rent_BOOk set rent_date='2016-11-18', submit_date='2016-12-01' where bno='01030111';

update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-01' where bno='01030121';
update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-02' where bno='01030222';
update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-03' where bno='01030223';
update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-01' where bno='01030363';


update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-01' where bno='01030382';
update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-02' where bno='01030392';
update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-03' where bno='04020123';
update rent_BOOk set rent_date='2016-11-30', submit_date='2016-12-01' where bno='05010062';

update rent_BOOk set rent_date='2016-11-05', submit_date='2016-11-29' where bno='04010191';
update rent_BOOk set rent_date='2016-11-06', submit_date='2016-11-20' where bno='04010153';
update rent_BOOk set rent_date='2016-11-07', submit_date='2016-11-18' where bno='04010052';
update rent_BOOk set rent_date='2016-11-08', submit_date='2016-11-10' where bno='03010173';

update rent_BOOk set rent_date='2016-10-08', submit_date='2016-10-29' where bno='99011511';
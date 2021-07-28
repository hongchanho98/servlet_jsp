drop table tblUser;
drop sequence seqUser;

create table tblUser(
    userSeq number primary key,
    userName varchar2(20) not null,
    userTel varchar2(15) not null,
    userId varchar2(50) not null,
    userPw varchar2(50) not null,
    userBirth Date not null,
    userEmail varchar2(50) not null,
    userGrade number default 1 not null,
    userPoint number default 0 not null,
    userGenre varchar2(50),
    userTheater varchar2(50),
    userQuestion number not null,
    userAnswer varchar2(300) not null,
    userImage varchar2(100) default '/images/default.png' not null,
    userLv number default 1 not null,
    userRegdate date default sysdate not null
);

create sequence seqUser;

insert into tblUser values(seqUser.nextVal,'이주아','010-6318-4671','ZPZXcM96','CWPiR8843','2002-05-25','ZPZXcM96@gmail.com',1,2000,'판타지','강남',1,'가족','/images/profile.png',1,'2020-05-02');
insert into tblUser values(seqUser.nextVal,'연지환','010-0857-7472','mmquXK1','ZJe1565','2004-07-17','mmquXK1@daum.net',1,0,'다큐','강남대로(씨티)',1,'친구','/images/profile.png',1,'2019-09-13');
insert into tblUser values(seqUser.nextVal,'오지원','010-2869-2362','LcLRwe50','tMoXL2324','2001-08-03','LcLRwe50@gmail.com',1,1000,'애니메이션','강동',4,'엄마','/images/profile.png',1,'2020-02-10');
insert into tblUser values(seqUser.nextVal,'장도훈','010-7946-7478','lFRmhv70','Jok2726','1989-01-02','lFRmhv70@naver.com',1,5000,'판타지','군자',2,'후회하지 않는 사람이 되자.','/images/profile.png',1,'2020-01-04');
insert into tblUser values(seqUser.nextVal,'오하율','010-7835-5208','HfNumC5','vRa9228','1980-03-01','HfNumC5@nate.com',1,0,'SF','동대문',3,'시골','/images/profile.png',1,'2019-09-22');
insert into tblUser values(seqUser.nextVal,'방한결','010-3579-5386','DxwJLN36','gTPF8781','1978-04-21','DxwJLN36@nate.com',1,6000,'로맨스','마곡',5,'박민준','/images/profile.png',1,'2019-10-21');
insert into tblUser values(seqUser.nextVal,'백민우','010-9103-6763','rAdNmU83','wxzh4884','1971-05-31','rAdNmU83@gmail.com',1,900,'스릴러','목동',6,'파일럿','/images/profile.png',1,'2019-01-20');
insert into tblUser values(seqUser.nextVal,'권주하','010-6486-7030','jKADZq62','lKTSR5418','1972-01-31','jKADZq62@daum.net',1,0,'애니메이션','상봉',2,'후회하지 않는 사람이 되자.','/images/profile.png',1,'2019-10-11');
insert into tblUser values(seqUser.nextVal,'구예진','010-3929-8655','JjuzMc54','fGg6690','2007-05-08','JjuzMc54@naver.com',1,4000,'성인','상암월드컵경기장',1,'가족','/images/profile.png',1,'2020-02-05');
insert into tblUser values(seqUser.nextVal,'여혜원','010-9218-6622','ylCDhy28','eMrA7332','1977-10-12','ylCDhy28@nate.com',1,0,'다큐','성수',3,'시골','/images/profile.png',1,'2019-09-24');
insert into tblUser values(seqUser.nextVal,'구유나','010-6119-1134','xAcIfp50','VtLPKF1273','2008-08-04','xAcIfp50@nate.com',1,700,'공포','센트럴',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1,'2019-04-21');
insert into tblUser values(seqUser.nextVal,'남민석','010-8039-7529','TRUZcw47','VOACM2474','2008-10-02','TRUZcw47@daum.net',1,500,'액션','송파파크하비오',6,'과학자','/images/profile.png',1,'2019-02-10');
insert into tblUser values(seqUser.nextVal,'용현수','010-4435-4749','sCUGqK31','ZPHg7313','1971-04-30','sCUGqK31@nate.com',1,6000,'SF','신촌',1,'가족','/images/profile.png',1,'2019-04-19');
insert into tblUser values(seqUser.nextVal,'안민성','010-8680-4736','xtkyBS23','BLDj4760','2001-12-26','xtkyBS23@gmail.com',1,0,'스릴러','이수',3,'부산','/images/profile.png',1,'2020-03-14');
insert into tblUser values(seqUser.nextVal,'현준영','010-0638-6711','izDRIg91','xLgP1898','1993-07-02','izDRIg91@daum.net',1,0,'다큐','창동',4,'엄마','/images/profile.png',1,'2019-06-05');
insert into tblUser values(seqUser.nextVal,'현하율','010-9758-1021','MnFekt54','UQuZ6599','1978-10-16','MnFekt54@nate.com',1,700,'SF','코엑스',4,'아빠','/images/profile.png',1,'2019-03-08');
insert into tblUser values(seqUser.nextVal,'조다인','010-3366-5925','uQwYWC21','YGtqi8741','1975-02-28','uQwYWC21@gmail.com',1,900,'판타지','홍대',3,'시골','/images/profile.png',1,'2020-01-25');
insert into tblUser values(seqUser.nextVal,'강주아','010-4054-4549','AxqCyj78','bxHlY8077','1971-05-14','AxqCyj78@nate.com',1,2000,'코미디','화곡',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1,'2019-04-07');
insert into tblUser values(seqUser.nextVal,'공지윤','010-8049-8919','KHyuCR19','wlrO3999','1980-06-28','KHyuCR19@naver.com',1,1000,'성인','ARTNINE',6,'파일럿','/images/profile.png',1,'2019-11-19');
insert into tblUser values(seqUser.nextVal,'길민서','010-8185-0258','HuLawb34','rBrS2543','1976-09-02','HuLawb34@naver.com',1,0,'SF','고양스타필드',3,'도시','/images/profile.png',1,'2019-10-28');
insert into tblUser values(seqUser.nextVal,'구민규','010-6412-3449','GFnnnz4','JYwee9704','1975-03-04','GFnnnz4@gmail.com',1,0,'판타지','김포한강신도시',4,'운동선수','/images/profile.png',1,'2020-02-29');
insert into tblUser values(seqUser.nextVal,'신민채','010-7517-0475','lQwpcZ8','jSoIu4504','1994-12-20','lQwpcZ8@gmail.com',1,1000,'로맨스','남양주',6,'선생님','/images/profile.png',1,'2019-02-15');
insert into tblUser values(seqUser.nextVal,'여지성','010-3854-0598','HKRwti48','lZxOU1818','1973-12-13','HKRwti48@gmail.com',1,4000,'판타지','남양주현대아울렛 스페이스원',6,'공무원','/images/profile.png',1,'2019-06-10');
insert into tblUser values(seqUser.nextVal,'최하람','010-9537-9253','oUbdiS15','tCLt7183','1997-05-14','oUbdiS15@gmail.com',1,1000,'로맨스','동탄',4,'엄마','/images/profile.png',1,'2019-08-03');
insert into tblUser values(seqUser.nextVal,'탁서희','010-1858-7794','nhltvV92','UAsQkK8738','1981-10-18','nhltvV92@gmail.com',1,0,'공포','미사강변',2,'흐르는 물처럼 살자.','/images/profile.png',1,'2020-03-07');
insert into tblUser values(seqUser.nextVal,'구승현','010-6558-9157','EGQCgo69','fYiA1769','1996-01-16','EGQCgo69@gmail.com',1,0,'판타지','백석',5,'한소희','/images/profile.png',1,'2019-11-27');
insert into tblUser values(seqUser.nextVal,'천다연','010-5858-5964','stMHoY57','nDj9905','1993-08-11','stMHoY57@gmail.com',1,700,'애니메이션','별내',6,'공무원','/images/profile.png',1,'2020-01-26');
insert into tblUser values(seqUser.nextVal,'반은호','010-9380-8735','OnSyMy63','iAtl3267','1999-05-02','OnSyMy63@naver.com',1,4000,'공포','부천스타필드시티',3,'서울','/images/profile.png',1,'2019-10-30');
insert into tblUser values(seqUser.nextVal,'유서아','010-8027-6314','qoForg2','FEnpYf9686','2005-11-24','qoForg2@nate.com',1,0,'성인','분당',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1,'2019-11-11');
insert into tblUser values(seqUser.nextVal,'변윤성','010-0928-0583','HUyAxA18','GtkN1169','1975-05-15','HUyAxA18@gmail.com',1,4000,'스릴러','수원',3,'서울','/images/profile.png',1,'2020-02-05');
insert into tblUser values(seqUser.nextVal,'허유진','010-3127-3396','CszIdt71','TXHa5008','1993-01-10','CszIdt71@daum.net',1,6000,'SF','수원남문',5,'박찬호','/images/profile.png',1,'2019-11-01');
insert into tblUser values(seqUser.nextVal,'박채원','010-5350-5910','thiTgD2','pORG1285','1970-10-28','thiTgD2@naver.com',1,0,'공포','시흥배곧',1,'가족','/images/profile.png',1,'2019-06-24');
insert into tblUser values(seqUser.nextVal,'류소연','010-9398-3706','QvclDh31','SCSdc1379','2010-03-04','QvclDh31@daum.net',1,0,'공포','안산중앙',2,'후회하지 않는 사람이 되자.','/images/profile.png',1,'2019-11-29');
insert into tblUser values(seqUser.nextVal,'남연우','010-3053-5250','fbCNzz57','SHt5385','2004-11-12','fbCNzz57@gmail.com',1,0,'로맨스','안성스타필드',4,'아빠','/images/profile.png',1,'2020-02-16');
insert into tblUser values(seqUser.nextVal,'안강민','010-0114-8330','xvLStT52','mQCa9525','1993-05-07','xvLStT52@naver.com',1,700,'코미디','양주',6,'건축가','/images/profile.png',1,'2019-11-16');
insert into tblUser values(seqUser.nextVal,'육정민','010-8982-8733','WGYyvY5','iBVpZ6917','1996-09-20','WGYyvY5@gmail.com',1,900,'코미디','영통',5,'박민준','/images/profile.png',1,'2019-12-29');
insert into tblUser values(seqUser.nextVal,'송승현','010-8077-0198','VcCKQT98','OsJStA1082','2010-03-13','VcCKQT98@naver.com',1,1000,'애니메이션','용인기흥',5,'박찬호','/images/profile.png',1,'2019-05-29');
insert into tblUser values(seqUser.nextVal,'제수아','010-0622-7988','vhJfbN43','IMWm2281','1988-02-05','vhJfbN43@gmail.com',1,0,'판타지','용인테크노밸리',6,'선생님','/images/profile.png',1,'2019-01-09');
insert into tblUser values(seqUser.nextVal,'오재원','010-7635-3258','ORfefc55','CYoXSl6090','1970-02-04','ORfefc55@nate.com',1,5000,'다큐','의정부민락',5,'박찬호','/images/profile.png',1,'2020-01-26');
insert into tblUser values(seqUser.nextVal,'황지윤','010-6042-2551','Pwcrca95','NOCI6374','1976-10-26','Pwcrca95@naver.com',1,700,'스릴러','일산',3,'시골','/images/profile.png',1,'2019-06-22');
insert into tblUser values(seqUser.nextVal,'진윤우','010-6072-3835','tKwEtc93','Pjt2438','1993-01-06','tKwEtc93@gmail.com',1,10000,'성인','일산벨라시타',2,'화합은 하지만 부화뇌동은 하지 않는다.','/images/profile.png',1,'2020-01-21');
insert into tblUser values(seqUser.nextVal,'지도연','010-4199-5481','MsOJhl2','OnV9592','2001-07-08','MsOJhl2@nate.com',1,0,'다큐','킨텍스',5,'한소희','/images/profile.png',1,'2019-06-30');
insert into tblUser values(seqUser.nextVal,'유이안','010-6954-3454','tXTGpz58','kcC4130','1992-05-31','tXTGpz58@naver.com',1,0,'코미디','파주금촌',1,'가족','/images/profile.png',1,'2020-04-05');
insert into tblUser values(seqUser.nextVal,'구태윤','010-7103-0000','OmbDTH57','FMJiR7584','1972-08-01','OmbDTH57@gmail.com',1,3000,'다큐','파주운정',5,'박민준','/images/profile.png',1,'2020-02-02');
insert into tblUser values(seqUser.nextVal,'공한결','010-0699-5387','SUcqXo58','njPGr3217','2004-06-06','SUcqXo58@gmail.com',1,10000,'다큐','파주출판도시',2,'화합은 하지만 부화뇌동은 하지 않는다.','/images/profile.png',1,'2019-09-20');
insert into tblUser values(seqUser.nextVal,'노시아','010-9647-6629','XMetcS55','CmpW4778','1984-09-01','XMetcS55@nate.com',1,4000,'SF','하남스타필드',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1,'2019-11-28');
insert into tblUser values(seqUser.nextVal,'변민재','010-2828-2046','JQWUWJ79','wXmNS7865','1972-03-07','JQWUWJ79@nate.com',1,0,'SF','검단',6,'프로그래머','/images/profile.png',1,'2019-03-04');
insert into tblUser values(seqUser.nextVal,'설현서','010-9414-5130','MeljbP9','mkjtI6900','1993-10-26','MeljbP9@daum.net',1,0,'SF','송도',2,'흐르는 물처럼 살자.','/images/profile.png',1,'2019-01-07');
insert into tblUser values(seqUser.nextVal,'채예진','010-2868-4413','qMLIYx19','AwF5979','1978-08-27','qMLIYx19@daum.net',1,6000,'액션','영종',5,'박찬호','/images/profile.png',1,'2019-01-17');
insert into tblUser values(seqUser.nextVal,'주서현','010-9924-8047','hefQKi85','QGqH6890','1974-04-08','hefQKi85@gmail.com',1,5000,'애니메이션','인천논현',3,'부산','/images/profile.png',1,'2019-07-02');
insert into tblUser values(seqUser.nextVal,'장다연','010-0310-3027','YBhybx6','lzJ7161','1975-06-27','YBhybx6@daum.net',1,0,'판타지','청라지젤',5,'한소희','/images/profile.png',1,'2019-02-23');
insert into tblUser values(seqUser.nextVal,'권채윤','010-3644-4087','fbUimA74','uvM2864','1987-03-01','fbUimA74@naver.com',1,6000,'로맨스','공주',6,'프로그래머','/images/profile.png',1,'2019-06-09');
insert into tblUser values(seqUser.nextVal,'한사랑','010-1522-2443','afuefa20','nfk6929','1981-05-08','afuefa20@nate.com',1,0,'스릴러','논산',1,'가족','/images/profile.png',1,'2019-03-08');
insert into tblUser values(seqUser.nextVal,'천준호','010-4990-5996','YBjEPC91','wWZ9911','1980-10-24','YBjEPC91@nate.com',1,2000,'성인','대전',5,'한소희','/images/profile.png',1,'2019-01-02');
insert into tblUser values(seqUser.nextVal,'구수아','010-3630-3519','qNPoLA84','bYMe9527','2001-06-11','qNPoLA84@naver.com',1,1000,'애니메이션','대전유성',5,'박민준','/images/profile.png',1,'2019-09-16');
insert into tblUser values(seqUser.nextVal,'홍진우','010-1759-8284','zvShau1','Qfiv4745','1972-02-05','zvShau1@nate.com',1,1000,'판타지','대전중앙로',1,'가족','/images/profile.png',1,'2019-07-25');
insert into tblUser values(seqUser.nextVal,'맹윤성','010-7742-8006','bkgJBR45','HPp4084','2006-09-27','bkgJBR45@daum.net',1,0,'코미디','대전현대아울렛',4,'독립운동가','/images/profile.png',1,'2019-11-23');
insert into tblUser values(seqUser.nextVal,'신혜원','010-6048-4245','XIiJNw30','NwFE1259','2009-07-28','XIiJNw30@daum.net',1,5000,'액션','세종(조치원)',4,'엄마','/images/profile.png',1,'2019-07-05');
insert into tblUser values(seqUser.nextVal,'노민호','010-7453-5731','QVafbM16','GTHE7179','1995-04-28','QVafbM16@nate.com',1,5000,'판타지','세종나성',4,'운동선수','/images/profile.png',1,'2019-07-14');
insert into tblUser values(seqUser.nextVal,'엄승우','010-9283-1799','KbFhhF38','Czf9207','1998-09-06','KbFhhF38@naver.com',1,0,'코미디','세종청사',5,'안상태','/images/profile.png',1,'2019-11-15');
insert into tblUser values(seqUser.nextVal,'양소은','010-3049-9988','lQkohB16','VbxZy7842','1995-02-14','lQkohB16@naver.com',1,500,'성인','오창',5,'박민준','/images/profile.png',1,'2020-03-05');
insert into tblUser values(seqUser.nextVal,'노수빈','010-9955-6751','EWbOSc17','QqJ8805','1989-10-15','EWbOSc17@naver.com',1,500,'애니메이션','제천',2,'흐르는 물처럼 살자.','/images/profile.png',1,'2020-01-25');
insert into tblUser values(seqUser.nextVal,'추주하','010-1067-8000','SQDeXF9','filMHV7273','1990-08-31','SQDeXF9@naver.com',1,900,'액션','진천',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1,'2019-04-30');
insert into tblUser values(seqUser.nextVal,'성진우','010-1294-9411','AbQwAh54','EeK3818','1999-02-21','AbQwAh54@naver.com',1,0,'액션','천안',3,'도시','/images/profile.png',1,'2020-04-29');
insert into tblUser values(seqUser.nextVal,'허지환','010-1268-0470','qxzWQm79','TXZ9353','2010-03-29','qxzWQm79@daum.net',1,4000,'성인','청주사창',6,'경찰','/images/profile.png',1,'2020-04-19');
insert into tblUser values(seqUser.nextVal,'손시윤','010-4251-2351','IVKlSN52','mbTcK3044','1973-02-06','IVKlSN52@gmail.com',1,5000,'SF','충주',4,'운동선수','/images/profile.png',1,'2020-02-13');
insert into tblUser values(seqUser.nextVal,'남수호','010-8145-3637','LajxLJ46','PJQlk7229','1978-07-20','LajxLJ46@nate.com',1,2000,'로맨스','홍성내포',4,'엄마','/images/profile.png',1,'2019-06-30');
insert into tblUser values(seqUser.nextVal,'전도윤','010-0399-7572','ivuBpC56','NgWc2938','1990-02-04','ivuBpC56@gmail.com',1,10000,'액션','경북도청',6,'대통령','/images/profile.png',1,'2019-07-02');
insert into tblUser values(seqUser.nextVal,'조은서','010-7170-8307','OmHlvU9','HphROc4000','1971-06-17','OmHlvU9@daum.net',1,0,'로맨스','경산하양',4,'독립운동가','/images/profile.png',1,'2020-03-08');
insert into tblUser values(seqUser.nextVal,'현성현','010-1009-4191','QNKzQS44','lYCD4987','1999-05-02','QNKzQS44@gmail.com',1,2000,'스릴러','구미강동',5,'박찬호','/images/profile.png',1,'2020-04-04');
insert into tblUser values(seqUser.nextVal,'정주하','010-4439-1824','LOjFKT25','xTZY1583','1975-01-08','LOjFKT25@daum.net',1,500,'코미디','김천',1,'강아지','/images/profile.png',1,'2019-10-29');
insert into tblUser values(seqUser.nextVal,'천하민','010-8810-8478','BHwhXU89','JVFY9622','1973-12-20','BHwhXU89@gmail.com',1,0,'스릴러','남포항',4,'운동선수','/images/profile.png',1,'2019-03-01');
insert into tblUser values(seqUser.nextVal,'반도현','010-5931-5018','dNuQNk45','kPWahh9556','1977-01-09','dNuQNk45@daum.net',1,10000,'애니메이션','대구(칠성로)',6,'선생님','/images/profile.png',1,'2019-11-28');
insert into tblUser values(seqUser.nextVal,'유지수','010-6563-9801','vQlBOl46','DogDlX2267','1994-12-08','vQlBOl46@nate.com',1,1000,'액션','대구신세계(동대구)',5,'박민준','/images/profile.png',1,'2020-01-17');
insert into tblUser values(seqUser.nextVal,'서하연','010-2540-4468','rWAyGC8','yDGg5551','1972-01-01','rWAyGC8@nate.com',1,700,'다큐','대구이시아',5,'안상태','/images/profile.png',1,'2020-04-27');
insert into tblUser values(seqUser.nextVal,'선주원','010-6313-0035','gucsSC54','Nxu8433','1972-02-12','gucsSC54@naver.com',1,0,'다큐','덕천',5,'김은혜','/images/profile.png',1,'2019-10-17');
insert into tblUser values(seqUser.nextVal,'편다온','010-3764-0566','QOlQIo37','rhux2977','2009-06-01','QOlQIo37@naver.com',1,6000,'공포','마산',6,'프로그래머','/images/profile.png',1,'2020-03-16');
insert into tblUser values(seqUser.nextVal,'강현준','010-2592-9203','DEHnPX94','FmVX6283','1993-11-28','DEHnPX94@naver.com',1,1000,'SF','문경',5,'김은혜','/images/profile.png',1,'2020-03-09');
insert into tblUser values(seqUser.nextVal,'설예은','010-9460-5410','ePxWXV35','OyQno2117','2004-05-24','ePxWXV35@nate.com',1,0,'코미디','부산극장',1,'강아지','/images/profile.png',1,'2020-01-18');
insert into tblUser values(seqUser.nextVal,'김준우','010-9249-7811','jQfwTn87','koQu6069','1999-11-14','jQfwTn87@nate.com',1,5000,'SF','부산대',4,'아빠','/images/profile.png',1,'2019-12-28');
insert into tblUser values(seqUser.nextVal,'하다은','010-8890-5948','TFcGOt89','mvtn4437','1982-03-22','TFcGOt89@naver.com',1,500,'SF','북대구(칠곡)',4,'아빠','/images/profile.png',1,'2019-11-10');
insert into tblUser values(seqUser.nextVal,'모승아','010-6082-7295','JvYOPC80','DHZ3334','2006-11-16','JvYOPC80@nate.com',1,0,'스릴러','삼천포',5,'김은혜','/images/profile.png',1,'2019-06-01');
insert into tblUser values(seqUser.nextVal,'류하율','010-9800-2196','DMMjjg28','fMVPig3243','1976-04-04','DMMjjg28@gmail.com',1,4000,'애니메이션','양산',5,'김은혜','/images/profile.png',1,'2019-02-07');
insert into tblUser values(seqUser.nextVal,'윤예림','010-9041-0686','KoeOzS82','wjBv7592','1979-10-26','KoeOzS82@daum.net',1,1000,'공포','양산라피에스타',5,'박찬호','/images/profile.png',1,'2020-04-08');
insert into tblUser values(seqUser.nextVal,'탁시원','010-4572-5230','vMJtbw4','fXj9961','2001-10-12','vMJtbw4@nate.com',1,0,'코미디','울산',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1,'2019-02-23');
insert into tblUser values(seqUser.nextVal,'어도윤','010-2626-4264','nbbSJN28','xMC4740','1977-12-26','nbbSJN28@gmail.com',1,6000,'스릴러','정관',5,'박민준','/images/profile.png',1,'2019-01-29');
insert into tblUser values(seqUser.nextVal,'고유진','010-0582-9344','Orlhcq94','nQbV2075','2006-12-24','Orlhcq94@naver.com',1,0,'스릴러','창원',1,'가족','/images/profile.png',1,'2020-05-01');
insert into tblUser values(seqUser.nextVal,'구서하','010-8061-3822','fveYVv86','oKlgx1030','1982-04-14','fveYVv86@gmail.com',1,6000,'애니메이션','창원내서',6,'선생님','/images/profile.png',1,'2019-08-05');
insert into tblUser values(seqUser.nextVal,'백수아','010-2124-9334','YtvqHZ6','HKdd6090','1985-06-30','YtvqHZ6@naver.com',1,5000,'SF','해운대(장산)',4,'독립운동가','/images/profile.png',1,'2020-02-17');
insert into tblUser values(seqUser.nextVal,'서나은','010-5129-7892','TpmRPk57','BMji5179','1997-11-06','TpmRPk57@naver.com',1,3000,'애니메이션','광주상무',1,'가족','/images/profile.png',1,'2019-10-03');
insert into tblUser values(seqUser.nextVal,'연나연','010-0950-4633','cytCXL45','FZpl4631','1988-06-28','cytCXL45@gmail.com',1,10000,'로맨스','광주하남',3,'서울','/images/profile.png',1,'2019-08-20');
insert into tblUser values(seqUser.nextVal,'권은서','010-6345-9959','rLcDQA64','QaZG9382','1977-10-18','rLcDQA64@nate.com',1,0,'공포','목포하당(포르모)',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1,'2020-05-07');
insert into tblUser values(seqUser.nextVal,'양건','010-4305-0933','KlrAVL43','aUAya1477','1971-10-29','KlrAVL43@gmail.com',1,3000,'성인','송천',3,'도시','/images/profile.png',1,'2020-03-04');
insert into tblUser values(seqUser.nextVal,'전아영','010-4459-6266','brBWSb57','ZOa8445','2000-12-16','brBWSb57@nate.com',1,0,'코미디','순천',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1,'2019-05-10');
insert into tblUser values(seqUser.nextVal,'은아린','010-2887-9651','WfkAkg85','pkt7105','1983-01-13','WfkAkg85@gmail.com',1,4000,'액션','여수웅천',5,'박민준','/images/profile.png',1,'2019-02-22');
insert into tblUser values(seqUser.nextVal,'권도훈','010-8713-8447','HHdCDk47','EIqbkh4122','2000-06-10','HHdCDk47@nate.com',1,6000,'애니메이션','전대(광주)',5,'김은혜','/images/profile.png',1,'2019-10-06');
insert into tblUser values(seqUser.nextVal,'유지안','010-7244-6318','fPshql25','SUxtzM2773','1984-09-27','fPshql25@nate.com',1,900,'애니메이션','전주혁신',3,'부산','/images/profile.png',1,'2019-04-13');
insert into tblUser values(seqUser.nextVal,'하규민','010-3840-4937','OiXFkI65','GeJyGS6123','1996-04-29','OiXFkI65@daum.net',1,0,'로맨스','첨단',3,'부산','/images/profile.png',1,'2019-12-08');
insert into tblUser values(seqUser.nextVal,'금민호','010-3532-6210','cHNkTy57','hLmQ8586','1977-04-15','cHNkTy57@naver.com',1,0,'로맨스','남춘천',2,'후회하지 않는 사람이 되자.','/images/profile.png',1,'2019-01-24');
insert into tblUser values(seqUser.nextVal,'설정우','010-7196-1280','bqNIAx45','pEcZb4670','1992-03-07','bqNIAx45@gmail.com',1,4000,'다큐','속초',6,'프로그래머','/images/profile.png',1,'2019-09-08');

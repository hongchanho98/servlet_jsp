
create user web_team6 identified by java1234;

grant connect,resource to web_team6;
grant create view to web_team6;




drop table tblUser;
drop sequence seqUser;

create table tblUser(
    userSeq number primary key,
    userName varchar2(20),
    userTel varchar2(15),
    userId varchar2(50),
    userPw varchar2(50),
    userBirth Date,
    userEmail varchar2(50),
    userGrade number,
    userPoint number,
    userGenre varchar2(50),
    userTheater varchar2(50),
    userQuestion number,
    userAnswet varchar2(300),
    userImage varchar2(100),
    userLv number
);

create sequence seqUser;

insert into tblUser values(seqUser.nextVal,'이주아','010-6318-4671','ZPZXcM96','CWPiR8843','2002-05-25','ZPZXcM96@gmail.com',1,2000,'판타지','강남',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'연지환','010-0857-7472','mmquXK1','ZJe1565','2004-07-17','mmquXK1@daum.net',1,0,'다큐','강남대로(씨티)',1,'친구','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'오지원','010-2869-2362','LcLRwe50','tMoXL2324','2001-08-03','LcLRwe50@gmail.com',1,1000,'애니메이션','강동',4,'엄마','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'장도훈','010-7946-7478','lFRmhv70','Jok2726','1989-01-02','lFRmhv70@naver.com',1,5000,'판타지','군자',2,'후회하지 않는 사람이 되자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'오하율','010-7835-5208','HfNumC5','vRa9228','1980-03-01','HfNumC5@nate.com',1,0,'SF','동대문',3,'시골','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'방한결','010-3579-5386','DxwJLN36','gTPF8781','1978-04-21','DxwJLN36@nate.com',1,6000,'로맨스','마곡',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'백민우','010-9103-6763','rAdNmU83','wxzh4884','1971-05-31','rAdNmU83@gmail.com',1,900,'스릴러','목동',6,'파일럿','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'권주하','010-6486-7030','jKADZq62','lKTSR5418','1972-01-31','jKADZq62@daum.net',1,0,'애니메이션','상봉',2,'후회하지 않는 사람이 되자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구예진','010-3929-8655','JjuzMc54','fGg6690','2007-05-08','JjuzMc54@naver.com',1,4000,'성인','상암월드컵경기장',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'여혜원','010-9218-6622','ylCDhy28','eMrA7332','1977-10-12','ylCDhy28@nate.com',1,0,'다큐','성수',3,'시골','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구유나','010-6119-1134','xAcIfp50','VtLPKF1273','2008-08-04','xAcIfp50@nate.com',1,700,'공포','센트럴',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'남민석','010-8039-7529','TRUZcw47','VOACM2474','2008-10-02','TRUZcw47@daum.net',1,500,'액션','송파파크하비오',6,'과학자','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'용현수','010-4435-4749','sCUGqK31','ZPHg7313','1971-04-30','sCUGqK31@nate.com',1,6000,'SF','신촌',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'안민성','010-8680-4736','xtkyBS23','BLDj4760','2001-12-26','xtkyBS23@gmail.com',1,0,'스릴러','이수',3,'부산','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'현준영','010-0638-6711','izDRIg91','xLgP1898','1993-07-02','izDRIg91@daum.net',1,0,'다큐','창동',4,'엄마','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'현하율','010-9758-1021','MnFekt54','UQuZ6599','1978-10-16','MnFekt54@nate.com',1,700,'SF','코엑스',4,'아빠','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'조다인','010-3366-5925','uQwYWC21','YGtqi8741','1975-02-28','uQwYWC21@gmail.com',1,900,'판타지','홍대',3,'시골','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'강주아','010-4054-4549','AxqCyj78','bxHlY8077','1971-05-14','AxqCyj78@nate.com',1,2000,'코미디','화곡',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'공지윤','010-8049-8919','KHyuCR19','wlrO3999','1980-06-28','KHyuCR19@naver.com',1,1000,'성인','ARTNINE',6,'파일럿','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'길민서','010-8185-0258','HuLawb34','rBrS2543','1976-09-02','HuLawb34@naver.com',1,0,'SF','고양스타필드',3,'도시','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구민규','010-6412-3449','GFnnnz4','JYwee9704','1975-03-04','GFnnnz4@gmail.com',1,0,'판타지','김포한강신도시',4,'운동선수','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'신민채','010-7517-0475','lQwpcZ8','jSoIu4504','1994-12-20','lQwpcZ8@gmail.com',1,1000,'로맨스','남양주',6,'선생님','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'여지성','010-3854-0598','HKRwti48','lZxOU1818','1973-12-13','HKRwti48@gmail.com',1,4000,'판타지','남양주현대아울렛 스페이스원',6,'공무원','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'최하람','010-9537-9253','oUbdiS15','tCLt7183','1997-05-14','oUbdiS15@gmail.com',1,1000,'로맨스','동탄',4,'엄마','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'탁서희','010-1858-7794','nhltvV92','UAsQkK8738','1981-10-18','nhltvV92@gmail.com',1,0,'공포','미사강변',2,'흐르는 물처럼 살자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구승현','010-6558-9157','EGQCgo69','fYiA1769','1996-01-16','EGQCgo69@gmail.com',1,0,'판타지','백석',5,'한소희','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'천다연','010-5858-5964','stMHoY57','nDj9905','1993-08-11','stMHoY57@gmail.com',1,700,'애니메이션','별내',6,'공무원','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'반은호','010-9380-8735','OnSyMy63','iAtl3267','1999-05-02','OnSyMy63@naver.com',1,4000,'공포','부천스타필드시티',3,'서울','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'유서아','010-8027-6314','qoForg2','FEnpYf9686','2005-11-24','qoForg2@nate.com',1,0,'성인','분당',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'변윤성','010-0928-0583','HUyAxA18','GtkN1169','1975-05-15','HUyAxA18@gmail.com',1,4000,'스릴러','수원',3,'서울','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'허유진','010-3127-3396','CszIdt71','TXHa5008','1993-01-10','CszIdt71@daum.net',1,6000,'SF','수원남문',5,'박찬호','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'박채원','010-5350-5910','thiTgD2','pORG1285','1970-10-28','thiTgD2@naver.com',1,0,'공포','시흥배곧',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'류소연','010-9398-3706','QvclDh31','SCSdc1379','2010-03-04','QvclDh31@daum.net',1,0,'공포','안산중앙',2,'후회하지 않는 사람이 되자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'남연우','010-3053-5250','fbCNzz57','SHt5385','2004-11-12','fbCNzz57@gmail.com',1,0,'로맨스','안성스타필드',4,'아빠','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'안강민','010-0114-8330','xvLStT52','mQCa9525','1993-05-07','xvLStT52@naver.com',1,700,'코미디','양주',6,'건축가','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'육정민','010-8982-8733','WGYyvY5','iBVpZ6917','1996-09-20','WGYyvY5@gmail.com',1,900,'코미디','영통',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'송승현','010-8077-0198','VcCKQT98','OsJStA1082','2010-03-13','VcCKQT98@naver.com',1,1000,'애니메이션','용인기흥',5,'박찬호','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'제수아','010-0622-7988','vhJfbN43','IMWm2281','1988-02-05','vhJfbN43@gmail.com',1,0,'판타지','용인테크노밸리',6,'선생님','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'오재원','010-7635-3258','ORfefc55','CYoXSl6090','1970-02-04','ORfefc55@nate.com',1,5000,'다큐','의정부민락',5,'박찬호','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'황지윤','010-6042-2551','Pwcrca95','NOCI6374','1976-10-26','Pwcrca95@naver.com',1,700,'스릴러','일산',3,'시골','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'진윤우','010-6072-3835','tKwEtc93','Pjt2438','1993-01-06','tKwEtc93@gmail.com',1,10000,'성인','일산벨라시타',2,'화합은 하지만 부화뇌동은 하지 않는다.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'지도연','010-4199-5481','MsOJhl2','OnV9592','2001-07-08','MsOJhl2@nate.com',1,0,'다큐','킨텍스',5,'한소희','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'유이안','010-6954-3454','tXTGpz58','kcC4130','1992-05-31','tXTGpz58@naver.com',1,0,'코미디','파주금촌',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구태윤','010-7103-0000','OmbDTH57','FMJiR7584','1972-08-01','OmbDTH57@gmail.com',1,3000,'다큐','파주운정',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'공한결','010-0699-5387','SUcqXo58','njPGr3217','2004-06-06','SUcqXo58@gmail.com',1,10000,'다큐','파주출판도시',2,'화합은 하지만 부화뇌동은 하지 않는다.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'노시아','010-9647-6629','XMetcS55','CmpW4778','1984-09-01','XMetcS55@nate.com',1,4000,'SF','하남스타필드',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'변민재','010-2828-2046','JQWUWJ79','wXmNS7865','1972-03-07','JQWUWJ79@nate.com',1,0,'SF','검단',6,'프로그래머','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'설현서','010-9414-5130','MeljbP9','mkjtI6900','1993-10-26','MeljbP9@daum.net',1,0,'SF','송도',2,'흐르는 물처럼 살자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'채예진','010-2868-4413','qMLIYx19','AwF5979','1978-08-27','qMLIYx19@daum.net',1,6000,'액션','영종',5,'박찬호','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'주서현','010-9924-8047','hefQKi85','QGqH6890','1974-04-08','hefQKi85@gmail.com',1,5000,'애니메이션','인천논현',3,'부산','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'장다연','010-0310-3027','YBhybx6','lzJ7161','1975-06-27','YBhybx6@daum.net',1,0,'판타지','청라지젤',5,'한소희','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'권채윤','010-3644-4087','fbUimA74','uvM2864','1987-03-01','fbUimA74@naver.com',1,6000,'로맨스','공주',6,'프로그래머','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'한사랑','010-1522-2443','afuefa20','nfk6929','1981-05-08','afuefa20@nate.com',1,0,'스릴러','논산',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'천준호','010-4990-5996','YBjEPC91','wWZ9911','1980-10-24','YBjEPC91@nate.com',1,2000,'성인','대전',5,'한소희','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구수아','010-3630-3519','qNPoLA84','bYMe9527','2001-06-11','qNPoLA84@naver.com',1,1000,'애니메이션','대전유성',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'홍진우','010-1759-8284','zvShau1','Qfiv4745','1972-02-05','zvShau1@nate.com',1,1000,'판타지','대전중앙로',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'맹윤성','010-7742-8006','bkgJBR45','HPp4084','2006-09-27','bkgJBR45@daum.net',1,0,'코미디','대전현대아울렛',4,'독립운동가','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'신혜원','010-6048-4245','XIiJNw30','NwFE1259','2009-07-28','XIiJNw30@daum.net',1,5000,'액션','세종(조치원)',4,'엄마','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'노민호','010-7453-5731','QVafbM16','GTHE7179','1995-04-28','QVafbM16@nate.com',1,5000,'판타지','세종나성',4,'운동선수','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'엄승우','010-9283-1799','KbFhhF38','Czf9207','1998-09-06','KbFhhF38@naver.com',1,0,'코미디','세종청사',5,'안상태','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'양소은','010-3049-9988','lQkohB16','VbxZy7842','1995-02-14','lQkohB16@naver.com',1,500,'성인','오창',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'노수빈','010-9955-6751','EWbOSc17','QqJ8805','1989-10-15','EWbOSc17@naver.com',1,500,'애니메이션','제천',2,'흐르는 물처럼 살자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'추주하','010-1067-8000','SQDeXF9','filMHV7273','1990-08-31','SQDeXF9@naver.com',1,900,'액션','진천',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'성진우','010-1294-9411','AbQwAh54','EeK3818','1999-02-21','AbQwAh54@naver.com',1,0,'액션','천안',3,'도시','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'허지환','010-1268-0470','qxzWQm79','TXZ9353','2010-03-29','qxzWQm79@daum.net',1,4000,'성인','청주사창',6,'경찰','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'손시윤','010-4251-2351','IVKlSN52','mbTcK3044','1973-02-06','IVKlSN52@gmail.com',1,5000,'SF','충주',4,'운동선수','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'남수호','010-8145-3637','LajxLJ46','PJQlk7229','1978-07-20','LajxLJ46@nate.com',1,2000,'로맨스','홍성내포',4,'엄마','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'전도윤','010-0399-7572','ivuBpC56','NgWc2938','1990-02-04','ivuBpC56@gmail.com',1,10000,'액션','경북도청',6,'대통령','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'조은서','010-7170-8307','OmHlvU9','HphROc4000','1971-06-17','OmHlvU9@daum.net',1,0,'로맨스','경산하양',4,'독립운동가','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'현성현','010-1009-4191','QNKzQS44','lYCD4987','1999-05-02','QNKzQS44@gmail.com',1,2000,'스릴러','구미강동',5,'박찬호','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'정주하','010-4439-1824','LOjFKT25','xTZY1583','1975-01-08','LOjFKT25@daum.net',1,500,'코미디','김천',1,'강아지','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'천하민','010-8810-8478','BHwhXU89','JVFY9622','1973-12-20','BHwhXU89@gmail.com',1,0,'스릴러','남포항',4,'운동선수','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'반도현','010-5931-5018','dNuQNk45','kPWahh9556','1977-01-09','dNuQNk45@daum.net',1,10000,'애니메이션','대구(칠성로)',6,'선생님','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'유지수','010-6563-9801','vQlBOl46','DogDlX2267','1994-12-08','vQlBOl46@nate.com',1,1000,'액션','대구신세계(동대구)',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'서하연','010-2540-4468','rWAyGC8','yDGg5551','1972-01-01','rWAyGC8@nate.com',1,700,'다큐','대구이시아',5,'안상태','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'선주원','010-6313-0035','gucsSC54','Nxu8433','1972-02-12','gucsSC54@naver.com',1,0,'다큐','덕천',5,'김은혜','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'편다온','010-3764-0566','QOlQIo37','rhux2977','2009-06-01','QOlQIo37@naver.com',1,6000,'공포','마산',6,'프로그래머','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'강현준','010-2592-9203','DEHnPX94','FmVX6283','1993-11-28','DEHnPX94@naver.com',1,1000,'SF','문경',5,'김은혜','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'설예은','010-9460-5410','ePxWXV35','OyQno2117','2004-05-24','ePxWXV35@nate.com',1,0,'코미디','부산극장',1,'강아지','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'김준우','010-9249-7811','jQfwTn87','koQu6069','1999-11-14','jQfwTn87@nate.com',1,5000,'SF','부산대',4,'아빠','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'하다은','010-8890-5948','TFcGOt89','mvtn4437','1982-03-22','TFcGOt89@naver.com',1,500,'SF','북대구(칠곡)',4,'아빠','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'모승아','010-6082-7295','JvYOPC80','DHZ3334','2006-11-16','JvYOPC80@nate.com',1,0,'스릴러','삼천포',5,'김은혜','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'류하율','010-9800-2196','DMMjjg28','fMVPig3243','1976-04-04','DMMjjg28@gmail.com',1,4000,'애니메이션','양산',5,'김은혜','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'윤예림','010-9041-0686','KoeOzS82','wjBv7592','1979-10-26','KoeOzS82@daum.net',1,1000,'공포','양산라피에스타',5,'박찬호','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'탁시원','010-4572-5230','vMJtbw4','fXj9961','2001-10-12','vMJtbw4@nate.com',1,0,'코미디','울산',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'어도윤','010-2626-4264','nbbSJN28','xMC4740','1977-12-26','nbbSJN28@gmail.com',1,6000,'스릴러','정관',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'고유진','010-0582-9344','Orlhcq94','nQbV2075','2006-12-24','Orlhcq94@naver.com',1,0,'스릴러','창원',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'구서하','010-8061-3822','fveYVv86','oKlgx1030','1982-04-14','fveYVv86@gmail.com',1,6000,'애니메이션','창원내서',6,'선생님','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'백수아','010-2124-9334','YtvqHZ6','HKdd6090','1985-06-30','YtvqHZ6@naver.com',1,5000,'SF','해운대(장산)',4,'독립운동가','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'서나은','010-5129-7892','TpmRPk57','BMji5179','1997-11-06','TpmRPk57@naver.com',1,3000,'애니메이션','광주상무',1,'가족','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'연나연','010-0950-4633','cytCXL45','FZpl4631','1988-06-28','cytCXL45@gmail.com',1,10000,'로맨스','광주하남',3,'서울','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'권은서','010-6345-9959','rLcDQA64','QaZG9382','1977-10-18','rLcDQA64@nate.com',1,0,'공포','목포하당(포르모)',2,'현재에 충실하며 내일을 준비하자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'양건','010-4305-0933','KlrAVL43','aUAya1477','1971-10-29','KlrAVL43@gmail.com',1,3000,'성인','송천',3,'도시','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'전아영','010-4459-6266','brBWSb57','ZOa8445','2000-12-16','brBWSb57@nate.com',1,0,'코미디','순천',2,'앞만 보고 가자, 내 인생에 뒤란 없다.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'은아린','010-2887-9651','WfkAkg85','pkt7105','1983-01-13','WfkAkg85@gmail.com',1,4000,'액션','여수웅천',5,'박민준','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'권도훈','010-8713-8447','HHdCDk47','EIqbkh4122','2000-06-10','HHdCDk47@nate.com',1,6000,'애니메이션','전대(광주)',5,'김은혜','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'유지안','010-7244-6318','fPshql25','SUxtzM2773','1984-09-27','fPshql25@nate.com',1,900,'애니메이션','전주혁신',3,'부산','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'하규민','010-3840-4937','OiXFkI65','GeJyGS6123','1996-04-29','OiXFkI65@daum.net',1,0,'로맨스','첨단',3,'부산','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'금민호','010-3532-6210','cHNkTy57','hLmQ8586','1977-04-15','cHNkTy57@naver.com',1,0,'로맨스','남춘천',2,'후회하지 않는 사람이 되자.','/images/profile.png',1);
insert into tblUser values(seqUser.nextVal,'설정우','010-7196-1280','bqNIAx45','pEcZb4670','1992-03-07','bqNIAx45@gmail.com',1,4000,'다큐','속초',6,'프로그래머','/images/profile.png',1);

drop table tblTheater;
drop sequence seqTheater;
create table tblTheater(
    theaterSeq number primary key,
    theaterName varchar2(50),
    theaterArea varchar2(50),
    theaterAddress varchar2(200),
    theaterInfo varchar2(1000),
    theaterTitle varchar2(500)
);

create sequence seqTheater;

insert into tblTheater values(seqTheater.nextVal,'강남','서울','서울 서초구 서초대로77길 3 아라타워 8층 필름모아 강남지점','8층 : 매표소, 매점, 에스컬레이터, 엘리베이터 , 남자 · 여자 화장실, 비상계단 3
9층 : 1관, 2관, 남자 · 여자 화장실, 엘리베이터, 비상계단3
10층 : 3관, 4관, 엘리베이터2, 남자 · 여자 화장실, 비상계단 3
11층 : 5관, 6관, 7관, 엘리베이터2, 남자 · 여자 화장실, 비상계단 3','강남의 중심! 강남 소비문화의 중심지인 지하철 2호선 , 신분당선 - 강남역과 연결
로맨틱 멀티플렉스! 젊은 도시 강남이 한 눈에 보이는 최상의 View를 제공');
insert into tblTheater values(seqTheater.nextVal,'강남대로(씨티)','서울','서울특별시 강남구 역삼동 강남대로 422','지하2층 : 3관, 4관, 로비, 자판기, 엘리베이터, 남자,여자화장실
로비층 : 매표소, 매점, 로비, 무인발권기, 엘리베이터, 남자,여자 화장실
2층 : 1관(계단), 로비, 자판기, 남자,여자 화장실
4층 : 2관, 로비, 자판기, 엘리베이터, 남자,여자 화장실','2호선 강남역과 9호선 신논현역을 잇는 생동감 넘치는 강남의 중심 벨트!! 문화와 쇼핑을 한번에!!
강남에서 가장 큰 상영관에서 압도되는 영상을 경험하세요.');
insert into tblTheater values(seqTheater.nextVal,'강동','서울','서울특별시 강동구 성내로 48 10관','1층 : 매표소, 매점, 무인 발권기, 로비, 엘리베이터, 남·여 화장실, 남·여 장애인 화장실, 캡슐 토이, 투썸 플레이스
2층 : 1관·2관, 로비, 엘리베이터, 음료 자판기, 남·여 화장실
4층 : 3관·4관, 로비, 엘리베이터, 음료 자판기, 남·여 화장실
6층 : 5관~10관, 로비, 엘리베이터, 음료 자판기, 남·여 화장실','강동구청역 도보 5분 거리에 위치!
10개관 총 1500석 규모! 249석의 대형 상영관에서 생생한 관람을!');
insert into tblTheater values(seqTheater.nextVal,'군자','서울','서울특별시 광진구 능동로 289(군자동) ','1층 : 로비, 투썸플레이스, 장애인 남자 · 여자 화장실, 엘리베이터
2층 : 국민은행
3층 : 매표소, 매점, 무인 발권기, 1관, 로비, 남자 · 여자 화장실, 엘리베이터
5층 : 3관, 4관, 로비, 남자 · 여자 화장실, 엘리베이터
7층 : 5관, 6관, 로비, 남자 · 여자 화장실, 엘리베이터
9층 : 7관, 8관, 로비, 남자 · 여자 화장실, 엘리베이터, 자판기
11층 : 9관, 10관, 로비, 남자 · 여자 화장실, 엘리베이터, 자판기','군자역 도보 5분 거리에 위치!
양 팔걸이와 쾌적한 관람을 위한 전관 가죽시트 도입!');
insert into tblTheater values(seqTheater.nextVal,'동대문','서울','서울 중구 장충단로 247 굿모닝시티9층 필름모아 동대문지점','9층 : 매표소, 매점, 무인발권기, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
10층 : 컴포트 1관, 2관, 3관, 4관, 5관, 6관, 7관, 8관, 남자 · 여자 화장실, 자판기','전통과 현대가 공존하는 곳, 동대문 역사문화공원역 13, 14번 출구
쾌적하고 멋스러운 로비, 지상 40m에서 즐기는 환상의 뷰! (8개 상영관/1,744석)');
insert into tblTheater values(seqTheater.nextVal,'마곡','서울','서울특별시 강서구 공항대로 247, 퀸즈파크나인 B동 4층 필름모아 마곡지점','4층 : 매표소, 매점, 무인발권기, 남녀 화장실, 장애인 화장실
5층 : 1관~3관 상영관 퇴장로
6층 : 1관~3관 상영관 입장로, 남녀 장실
7층 : 4관~6관 상영관 퇴장로
8층 : 4관~6관 상영관 입장로, 남녀 화장실','야외 테라스가 있는 마곡지구 최초 영화관
발산역 9번출구, 도보 1분거리내 위치 6개관, 815석');
insert into tblTheater values(seqTheater.nextVal,'목동','서울','서울 양천구 목동동로 309 행복한백화점 6층 필름모아 목동지점','5층 : 6관, 7관, 8관, 9관, 남/여화장실(상영관 중앙에 위치)
6층 : 로비, 매표소, 매점, 남/여화장실(3,4호기 엘리베이터 옆 위치)
7층 : MX관, 2관, 3관, 4관, COMFORT 5관, 로비, 남/여화장실(2관 맞은편 위치)','9개관 / 총 1,681석 규모
가장 진화 된 입체음향, 차세대 영화관의 표준을 제시하는 MX관 (돌비 애트모스, 마이어 사운드, 와이드 시트)');
insert into tblTheater values(seqTheater.nextVal,'상봉','서울','서울시 중랑구 망우로 30길 3 필름모아빌딩 4층 필름모아 상봉지점','4층 : 매표소, 매점, 1관, 남자 · 여자 화장실, 장애인 화장실, 고객 편의 공간
6층 : 2관, 3관, 4관, 남자 · 여자 화장실
8층 : 5관, 6관, 7관, 남자 · 여자 화장실','7개관 924석의 중랑구 최초 멀티플렉스
더욱 선명해진 스크린과 편안하고 위생적인 가죽시트');
insert into tblTheater values(seqTheater.nextVal,'상암월드컵경기장','서울','서울특별시 마포구 월드컵로 240(성산동, 월드컵주경기장)','1층 : 매표소, 매점, 무인발권기, 남자/여자 화장실, 상영관 (MX관, COMFORT관, 3~9관)','강북의 문화 랜드마크, 필름모아 100호점!
Meyer Sound와 Dolby ATMOS 시스템, 차세대 상영관의 표준 사운드 특화관 MX관');
insert into tblTheater values(seqTheater.nextVal,'성수','서울','서울특별시 성동구 성수동 1가 656-335','3층 : 1~2관, 로비, 매표, 매점, 남/여 화장실
5층 : MX관, 4~5관, 남/여 화장실
7층 : THE BOUTIQUE SUITE 101호~102호, 카페, 남/여 화장실','7개관 / 총 1,041석 규모
Meyer Sound와 Dolby ATMOS 시스템, 차세대 상영관의 표준 사운드 특화관 MX관');
insert into tblTheater values(seqTheater.nextVal,'센트럴','서울','서울시 서초구 신반포로 176 센트럴시티 빌딩 B1F 필름모아 센트럴지점','B1층 : THE BOUTIQUE 101호 ~ 105호, 매표소, 매점, 무인발권기
중층 : 더 부티크 Cafe, 남여화장실, 라운지','서초 강남구 최대 문화공간 FAMILLE STREET 내 위치
아르데코 양식으로 장식된 아늑한 THE BOUTIQUE');
insert into tblTheater values(seqTheater.nextVal,'송파파크하비오','서울','서울특별시 송파구 송파대로 111,(문정동,파크하비오푸르지오) 204동 지하1층 필름모아','지하1층 : 매표소, 매점, 무인 발권기, 상영관(1관~9관), 로비, 엘리베이터, 에스컬레이터
지하1층 : 남자,여자 화장실 3곳, 각종 판매 매장 연결(롯데프리미엄슈퍼, 워터킹덤, 찜질방, 커피빈 등)','기업 대관 및 프레젠테이션에 최적화된 상영관<1관~4관> (테이블 의자, 휴대폰/노트북 충전 멀티탭 설치) / PT 설명회에 최적화된 포디움 보유<1관~4관>
편안하게 영화 관람을 할 수 있도록 넓은 좌석배치와 등받이 조절이 가능한 의자 설치(7관)');
insert into tblTheater values(seqTheater.nextVal,'신촌','서울','서울시 서대문구 신촌역로 30 신촌민자역사 5층 필름모아 신촌지점','5층 : COMFORT 1관, 2관 ~ 8관, 매표소, 매점, 무인발권기, 남자 · 여자 화장실','품격을 높여주는 최고급 쇼파에서 고급화된 인테리어의 안락함을 즐겨보세요
전좌석 가죽시트, 핸드폰 충전이 가능한 가장 진화한 컴포트관 (COMFORT)');
insert into tblTheater values(seqTheater.nextVal,'이수','서울','서울시 동작구 동작대로 89 (사당동, 골든시네마타워 7층) 필름모아 이수지점','7층 : 1관 ~ 6관 상영관입구, 매표소, 매점, 남자 · 여자 화장실','전세계 어디에서도 느껴 볼 수 없는 19,000watts 사운드 시스템
롤링스톤즈가 고집한 최상의 파워앰프 E/V P3000 전세계 최초 영화관 사용');
insert into tblTheater values(seqTheater.nextVal,'창동','서울','서울특별시 도봉구 도봉로 558 (창동)','1층 : 매표소, 매점, 무인발권기, 엘리베이터, 남자, 여자 화장실, 장애인 화장실
2층 : 파스쿠치 커피숍
3층 : 1관, 로비, 엘리베이터, 남자, 여자 화장실
4층 : 2관, 로비, 엘리베이터, 남자, 여자 화장실
5층 : 3관, 로비, 엘리베이터, 남자, 여자 화장실
6층 : 4관, 로비, 엘리베이터, 남자, 여자 화장실
7층 : 5관, 로비, 엘리베이터, 남자, 여자 화장실','도봉구 최초 멀티 플렉스 영화관
앞 뒤 간격이 넓고 안락하고 쾌적한 관람을 위한 가죽 좌석 설치!');
insert into tblTheater values(seqTheater.nextVal,'코엑스','서울','서울시 강남구 봉은사로524 B1(삼성동,코엑스몰) 필름모아 코엑스지점 ','B2층 : Dolby Cinema관, 2~11관, 스크린 A,B, 멀티펑션룸, 매표소, 매점, 남자,여자 화장실
B1층 : THE BOUTIQUE 101호~103호(스위트룸), 104호-105호, PRIVATE, 카페, 라운지, 남자 · 여자 화장실(파우더룸)','2004년 아시아 최고의 영화관 선정, 2005년 관객수 619만으로 월드 레코드 등재
VIP 시사회, 제작발표회, 레드 카펫 행사 등 다양한 행사 유치');
insert into tblTheater values(seqTheater.nextVal,'홍대','서울','서울특별시 마포구 동교동 양화로 147 , 7-12층(동교동, 아일렉스)','7층 : 1관, 매표소, 매점, 화장실
9층 : 2관, 3관, 화장실
11층 : 4관, 5관, 화장실','글로벌 핵인싸 아싸들의 놀이터!
홍대입구역 1번 출구 오른쪽 50M 위치!');
insert into tblTheater values(seqTheater.nextVal,'화곡','서울','서울시 강서구 화곡로 142 필름스퀘어 4층 필름모아 화곡지점','4층 : 매표소, 매점, 무인 발권기, 1관,2관, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실, 자판기
6층 : 3관,4관,5관, 남자 · 여자 화장실, 엘리베이터, 에스컬레이터, 자판기','더 밝고 깨끗한 화질을 위한 필름모아 레이저 상영관 최초도입!
강서구의 랜드마크 화곡역 도보 3분거리에 위치! 5개관 총 850석 규모');
insert into tblTheater values(seqTheater.nextVal,'ARTNINE','서울','서울특별시 동작구 사당동 동작대로 89 골든시네마타워','12층 : 0관, 9관, 야외 상영관, 오픈 테라스, 매표소, 레스토랑 잇나인(EAT NINE), 엘리베이터, 남/여화장실','서초/강남/이수를 아우르는 강남 최초의 예술영화관(0관-92석, 9관-58석)
관악산을 마주본 탁 트인 야외 테라스와 맛있는 극장, 레스토랑 잇나인(EAT NINE)');
insert into tblTheater values(seqTheater.nextVal,'고양스타필드','경기','경기도 고양시 덕양구 고양대로 1955 스타필드고양 4층 필름모아 고양스타필드점','4층 : 매표소, 매점, 8~9관(KIDS관), 무인발권기, 남녀 화장실
5층 : 1관~7관, MX관, 남녀 화장실','스타필드와 필름모아의 만남, FilmMoA in 스타필드 고양
Meyer Sound와 Dolby ATMOS 시스템, 차세대 상영관의 표준 사운드 특화관 MX관');
insert into tblTheater values(seqTheater.nextVal,'김포한강신도시','경기','김포시 김포한강9로 75번길 180(구래동,두원타워) 8F','8층 : 매표소, 매점, 무인발권기, 남녀 화장실, 장애인 화장실
9층 : 1~5관 퇴출로, 남녀 화장실, 장애인 화장실
10층 : 1~5관 입장로, 남녀 화장실, 장애인 화장실','5개관 전관 레이저 영사기 도입! 돌비디지털 7.1 사운드 구현으로 최적의 관람 환경!
전좌석 가죽시트로 쾌적한 관람환경. 넓은 앞뒤 좌석간격');
insert into tblTheater values(seqTheater.nextVal,'남양주','경기','경기도 남양주시 호평동 늘을2로 26 메인시네마타워','9층 : 매표소, 1관, 2관, 3관, 5관, 6관, 7관, 8관, 9관, Sweet Bar, 남/여화장실','남양주 호평 최대의 복합 문화공간
장애우를 배려한 좌석 등 항상 따뜻한 미소가 넘치는 필름모아 남양주');
insert into tblTheater values(seqTheater.nextVal,'남양주현대아울렛 스페이스원','경기','경기남양주시 다산순환로 50 현대아울렛 스페이스원 3층 (필름모아 남양주 현대아울렛 스페이스원)','3층 : 매표소, 매점, 로비 대기공간, 화장실
4층 : 퇴장로, 수유실
5층 : 상영관 (1관 ~ 8관, 돌비시네마), 입장로, 화장실','경기동부 쇼핑과 문화가 공존하는
DOLBY CINEMA와 상영관 내 자동살균 청정지역');
insert into tblTheater values(seqTheater.nextVal,'동탄','경기','경기도 화성시 반송동 동탄지성로 11 동탄SR GOLD PLAZA','7층 : 매표소, 매점, 무인발권기, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
8층 : 1~4관, 남자 · 여자 화장실, 엘리베이터, 에스컬레이터, 자판기
10층 : 5~8관, 남자 · 여자 화장실, 엘리베이터, 에스컬레이터, 자판기','동탄 중심에 위치한 8개관 상영관
동탄 최초 전 좌석 리클라이너!');
insert into tblTheater values(seqTheater.nextVal,'미사강변','경기','경기도 하남시 미사강변중앙로 218','4층 : 매표소, 매점, 무인 발권기, 로비, 엘리베이터, 남자 · 여자 화장실
5층 : 1관, 2관, 3관, 4관, 5관, 남자 · 여자 화장실 엘리베이터','전관 리클라이너, 넓은 앞뒤 좌석간격의 쾌적한 관람환경
미사역 도보 3분!');
insert into tblTheater values(seqTheater.nextVal,'백석','경기','경기도 고양시 일산동구 중앙로 1036 고양종합터미널 5층 필름모아 백석지점','5층 : 유인창구(매표,매점), 무인발권기, HoneyBee Lounge(로비공연장)
6층 : 영관(1관~8관)','Dolby ATMOS 시스템과 JBL 사운드를 갖춘 COMFORT 4관,
대형 스크린과 가죽 더블 암 체어 (Double Arm Chair)');
insert into tblTheater values(seqTheater.nextVal,'별내','경기','경기도 남양주시 별내동 두물로 19','6층 : 4관, 5관, 6관, 매표소, 매점, 남/여자화장실
7층 : 1관, 2관, 3관, 남/여자화장실(장애인 화장실)','별내 신도시 최고의 복합문화공간!
쾌적한 영화관람을 위한 깔끔한 위생의 전 석 가죽시트!');
insert into tblTheater values(seqTheater.nextVal,'부천스타필드시티','경기','경기도 부천시 옥길로 1','4층 : 매표,매점,로비,에스컬레이터,무인발권기
5층 : 상영관, 화장실, 자판기, 주차장','스타필드 시티와 필름모아의 첫 만남!
더 밝고 선명한 관람을 위한 전상영관 레이저 영사기 도입');
insert into tblTheater values(seqTheater.nextVal,'분당','경기','경기도 성남시 분당구 서현동 황새울새로 332 분당문화센터','1층 : 매점, 매표소, 남/여화장실, 장애인화장실
2층 : 1관, 2관, 남/여화장실, 장애인화장실
3층 : 3관, 4관, 남/여화장실
4층 : 5관, BALCONY, THE BOUTIQUE SUITE, 남/여화장실','6개 상영관, 785석
스칸디나비안 리클라이너 좌석, JBL만의 파워풀한 음향을 자랑하는 THE BOUTIQUE SUITE');
insert into tblTheater values(seqTheater.nextVal,'수원','경기','경기도 수원시 권선구 경수대로 270 수원버스터미널 4층 필름모아 수원지점','4층 : 상영관 (1~5관)입구, 매점, 매표소, 남자화장실, 여자화장실','수원 최초의 멀티플렉스 영화관, 총 5개관 1,129석 규모!
전좌석 가죽시트로 안락하고 쾌적한 영화관람!');
insert into tblTheater values(seqTheater.nextVal,'수원남문','경기','경기도 수원시 팔달구 팔달로3가 행궁로 71','1.5층 : 상영관 2, 3관
2층 : 매표소, 매점, 남자.여자 화장실, 1관
3층 : 4관, 남자.여자 화장실','수원 최초!
전관 리클라이너, 넓고 깨끗한 좌석으로 안락한 관람 환경');
insert into tblTheater values(seqTheater.nextVal,'시흥배곧','경기','기도 시흥시 정왕동 배곧3로 96 M플러스','7층 : 매표소, 매점, 무인 발권기, 게임존, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
8층 : 컴포트 1관(돌비 애트모스 사운드 특화관),2관,3관,4관,5관,6관, 남자 · 여자 화장실 엘리베이터, 에스컬레이터, 전신안마기(유료)','눈 앞에서 펼쳐지는듯한 돌비 애트모스 사운드 특화관 도입!
배곧신도시의 차세대 랜드마크! 6개관 총 1,230여석 시흥 최대 좌석 보유!');
insert into tblTheater values(seqTheater.nextVal,'안산중앙','경기','경기도 안산시 단원구 고잔동 고잔2길 41 신양복합빌딩','9층 : 매표소, 매점, 무인 발권기, 1관~6관, 로비, 엘리베이터, 남자 · 여자 화장실, 휴게시설(오락실,카페 브리오쉬)','중앙동 랜드마크 중앙역 도보 5분거리에 위치! 6개관 총 620석 규모');
insert into tblTheater values(seqTheater.nextVal,'안성스타필드','경기','경기도 안성시 공도읍 서동대로 3930-39, 3F(스타필드 안성)','3층 : 매표소, 매점, 남여화장실, 1~7관(Dolby Cinema, KIDS)','경기남부 문화의 중심 필름모아 X 안성스타필드
경기도 첫 DOLBY CINEMA, 어린이 눈높이에 딱 FilmMoA KIDS');
insert into tblTheater values(seqTheater.nextVal,'양주','경기','경기도 양주시 고읍남로 6-6 (광사동, 해동센트럴타워 9층)','9층 : 매표소, 매점, 남자화장실, 여자화장실
10층 : 1관~4관, 남자화장실, 여자화장실','양주 최초 리클라이너 영화관
일반석과 리클라이너석 완비. 쾌적한 관람환경 제공');
insert into tblTheater values(seqTheater.nextVal,'영통','경기','경기도 수원시 영통구 봉영로 1579 (영통동,롯데쇼핑플라자5층) 필름모아 영통지점','5층 : 7관, 8관, 9관, 매표, 매점, 무인발권기, 화장실(남,여,장애인)
6층 : 필름키즈박스,게임톡톡, 화장실(남,여)
7층 : MX관, 2관, 3관, 4관, 5관, 6관, 화장실(남,여,장애인)','11개관, 1873석의 전관 디지털 상영시스템, 전관 가죽 시트
가장 진화된 상영관 MX관, Meyer Sound와 Dolby ATMOS 시스템, 와이드 시트');
insert into tblTheater values(seqTheater.nextVal,'용인기흥','경기','경기도 용인시 기흥구 고매동 신고매로 59 (고매동, 리빙파워센터 4층 필름모아)','4층 : 매표소, 매점, 수유실, 무인발권기','전관 리클라이너, 넓은 앞뒤 좌석간격의 쾌적한 관람환경
영화, 가구, 가전, 푸드, 놀이시설까지 모두 한자리에');
insert into tblTheater values(seqTheater.nextVal,'용인테크노밸리','경기','경기도 용인시 기흥구 구성로 357 (청덕동) 용인테크노밸리 A동 지하1층','B1층 : 매표소, 매점, 카페, 상영관(컴포트 1관, 데이드림 6관, 2~5관), 남자/여자 화장실','용인의 첫 번째 Life Theater, 필름모아 용인테크노밸리
JBL스피커로 즐기는 실감나는 DOLBY 7.1 사운드 음향!');
insert into tblTheater values(seqTheater.nextVal,'의정부민락','경기','경기도 의정부시 오목로205번길 55, 5~8층 (민락동, 필름타워) 필름모아 의정부민락지점','5층 : 매표소, 매점, 무인발권기, 필름라운지, 로비, 엘리베이터, 에스컬레이터, 남자,여자 화장실
6층 : 1관, 2관, 3관, 남자,여자 화장실, 엘리베이터, 에스컬레이터, 망로비
7층 : 남자,여자 화장실, 엘리베이터, 에스컬레이터
8층 : 4관, 5관, 6관, 남자,여자 화장실, 엘리베이터, 에스컬레이터','의정부 민락 유일의 영화관, 총 6개관 1,098석 규모!
전 좌석 가죽시트 도입으로 안락하고 쾌적한 관람환경 제공!');
insert into tblTheater values(seqTheater.nextVal,'일산','경기','경기도 고양시 일산서구 덕이동 덕이로 20 양우씨네플렉스','지하 1층 : 매표소, 매점, 남녀 화장실
2층 : 1관, 2관, 3관, 4관, 5관, 6관, 7관, 8관, 남녀 화장실 (장애우 화장실), 이벤트 홀, 휴게실','내 집 같은 편안함
일산 유일한 가족관의 안락한 고품질 쇼파석');
insert into tblTheater values(seqTheater.nextVal,'일산벨라시타','경기','경기도 고양시 일산동구 강송로33, 벨라시타 2층 필름모아 일산벨라시타지점','2층 : 매표소, 매점, Cafe, 라운지, 화장실, 파우더룸(여성), THE BOUTIQUE 101호~105호 입장로
1층 : THE BOUTIQUE 101호~105호 퇴장로, 화장실
지하 : 지하2층~지하4층 주차장','국내 첫 라이프 스타일 쇼핑센터 벨라시타 내 PREMIUM CINEMA 필름모아 더 부티크 일산벨라시타
아르데코 양식으로 장식된 아늑한 라운지와 상영관, 그리고 105호 COUPLE SEAT');
insert into tblTheater values(seqTheater.nextVal,'킨텍스','경기','경기도 고양시 일산서구 호수로 817 (대화동, 레이킨스몰 3층) 필름모아 킨텍스지점','3층 : 컴포트 1관, The Boutique Suite, 컴포트 3관, 4, 5, 6, 7, 8관, 매표소, 매점, 키오스크(무인발권기)4층 : 1관, 2관, 3관, 4관, 5관, 6관, 매표소, 매점, 화장실
6층 : ATMOS EX 컴포트 7관','8개 상영관 1720석 규모, 테라스가 있는 영화관
아시아 최초 건축 음향 컨설팅으로 최적화된 음향 시스템 마이 운드 COMFORT-1관');
insert into tblTheater values(seqTheater.nextVal,'파주금촌','경기','경기도 파주시 금촌동 중앙로 328','3층 : 매표소, 매점, 무인 발권기, 엘리베이터, 에스컬레이터, 남자,여자 화장실
4층 : 1관, 2관, 3관, 4관, 5관, 6관, 7관, 남자,여자 화장실, 에스컬레이터, 자판기','DOLBY ATMOS SOUND, 초대형 스크린과 편안한 좌석 컴포트 7관
FILM SOCIETY 작은 영화관 5관');
insert into tblTheater values(seqTheater.nextVal,'파주운정','경기','경기도 파주시 경의로 989 에스비프라자 3층 필름모아 파주운정점','1층 : 1관, 2관, 3관, 남자화장실, 여자화장실
2층 : 4관, 5관, 6관, 7관, 8관, 9관, 매표소, 매점, 남자화장실, 여자화장실','파주 운정신도시 내 최고의 Life Theater
넓고 편리한 주차타워, 총 7개관 882석');
insert into tblTheater values(seqTheater.nextVal,'파주출판도시','경기','경기도 파주시 문발로 220 파주출판단지 내 이채쇼핑몰 C동 필름모아 파주출판도시지점','4층 : 매표소, 매점, MX관, 1~6관, 더 부티크 라운지, 스위트룸(101호), 컴포트룸(102호)
키즈박스(키즈박스A, 키즈박스B), 키즈 카페, 무인발권기, 남녀 화장실, 파우더룸','9개관, 1636석으로 파주 최대 규모의 영화관
파주출판도시만의 예술적인 건축물과 심학산 정기를 이어받은 자유로운 환경의 콜라보레이션');
insert into tblTheater values(seqTheater.nextVal,'하남스타필드','경기','경기도 하남시 미사대로 750 스타필드 하남 4층 필름모아 하남스타필드지점','4층 : 매표, 매점, 무인발권기, 컴포트 1관, 2~5관, 남자 , 여자 및 장애인화장실','FilmMoA와 신세계의 첫 만남, FilmMoA in 스타필드 하남
Meyer Sound와 Dolby ATMOS 시스템, 가장 진화된 상영관 MX');
insert into tblTheater values(seqTheater.nextVal,'검단','인천','인천광역시 서구 서곶로 788 (당하동) 홀리랜드 4층 필름모아 검단','2층 : 매표소,매점,무인 발권기,남녀 화장실 ,장애인 화장실 2개
3층 : 퇴장로, 남녀 화장실 ,장애인 화장실 2개
4층 : 상영관(1관~8관) ,남녀 화장실 , 장애인 화장실 2개','더 밝고 깨끗한 화질 디지털 영사 줌렌즈 및 전 상영관 가죽시트!
JBL스피커로 즐기는 실감나는 7.1 돌비사운드 음향!');
insert into tblTheater values(seqTheater.nextVal,'송도','인천','인천광역시 연수구 송도과학로 16번길 33-4번지 트리플 스트리트 D동 2층 필름모아 송도지점','7층 : 매표소, 매점, 남자,여자 화장실, 카페
8층 : 상영관 1, 2, 3관, 남자, 여자 화장실
9층 : 상영관 4, 5, 6관, 남자, 여자 화장실','8개관 1,548석의 프리미엄 좌석 and 진정한 영화 사운드의 감동을 느낄 수 있는 MX관
기존 영화관 로비의 전형성을 탈피한 카페형 로비');
insert into tblTheater values(seqTheater.nextVal,'영종','인천','인천 중구 영종대로 184(운서동, 7층)','6층  표소, 매점, 무인 발권기, 로비, 엘리베이터, 에스컬레이터, 남자,여자 화장실
7층 : 1관, 2관, 3관, 4관, 5관, 6관, 7관, 8관, 남자,여자 화장실, 엘리베이터, 에스컬레이터','영종도 시민의 여가 문화를 선도하는 최적의 문화 플렛폼
영종도 중심 상권과 역세권에 위치한 탁월한 입지');
insert into tblTheater values(seqTheater.nextVal,'인천논현','인천','인천광역시 남동구 논현동 논고개로 61 라피에스타','4층 : 매표소, 매점, 무인 발권기, 1~7관, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실, 자판기','남동구 논현동 랜드마크 스트리트몰 라피에스타 상가내 위치한 영화관
수인분당선 인천논현역,소래포구역 도보 10분거리에 위치! 8개관 총 1221석 규모');
insert into tblTheater values(seqTheater.nextVal,'청라지젤','인천',' 인천 서구 청라에메랄드로 99, 지젤M청라 4층 필름모아 청라지젤점','1층 : 1관, 매점, 매표소, 네스카페, 남자화장실, 여자화장실
3층 : 2관, 3관, 4관, 남자화장실, 여자화장실
5층 : 5관, 6관, 7관, 남자화장실, 여자화장실','인천서구 지역 최초 프리미엄 상영관 도입!
청라커널웨이의 랜드마크, 도보 3분거리에 위치! 7개관 총 784석 규모');
insert into tblTheater values(seqTheater.nextVal,'공주','대전','충청남도 공주시 신관동 흑수골길 12','3층 : 매표소, 매점, 남자·여자 화장실, 1~5관','2005년 1월 개관 이래 공주시 랜드마크로 자리 매김
전 좌석 스타디움 방식');
insert into tblTheater values(seqTheater.nextVal,'논산','대전','충청남도 논산시 중앙로 255, 3,4층(내동, 우리필름모아타운)','5층 : 1관~8관, 매점, 매표소, 남자화장실, 여자화장실, 단일층 구조','논산시 최초 멀티플렉스 영화관!
누워서 볼 수 있는 리클라이너석 도입!');
insert into tblTheater values(seqTheater.nextVal,'대전','대전','대전 서구 문정로 77 로데오타운 5층 필름모아 대전지점','5층 : 매표소, 매점, 남자·여자 화장실
7층 : 1관~5관, 남자·여자 화장실','8개 상영관, 1333석 규모의 대형 멀티 플렉스
생생한 사운드와 감각적인 디자인이 어우러진 컴포트 상영관 도입(3,4,7,8관)');
insert into tblTheater values(seqTheater.nextVal,'대전유성','대전','대전광역시 유성구 봉명동 계룡로132번길 10 트럴프라자','4층 : 매표소, 매점, 고객 편의 공간 남자/여자 화장실
5층 : 상영관 1관~4관 퇴장로, 남자/여자 화장실, 장애인 화장실
6층 : 상영관 1관~4관 입구, 남자/여자 화장실, 장애인 화장실
7층 : 상영관 5관~8관 퇴장로, 장애인 화장실
8층 : 상영관 5관~8관 입구, 남자/여자 화장실, 장애인 화장실','DO IT OURSELVES : 함께 만드는 필름모아 대전유성지점
대전 유성구 중심 위치, 유성온천역 1번출구 5분 거리.');
insert into tblTheater values(seqTheater.nextVal,'대전중앙로','대전','대전광역시 중구 중앙로 126, 4~9층(대흥동)','대전 유성구 테크노중앙로 123, 3층 (용산동, 현대프리미엄아울렛 대전점)','대전의 중심 Life Theater, 필름모아 대전 중앙로!
JBL스피커로 즐기는 실감나는 DOLBY 7.1 사운드 음향!');
insert into tblTheater values(seqTheater.nextVal,'대전현대아울렛','대전','대전 유성구 테크노중앙로 123, 3층 (용산동, 현대프리미엄아울렛 대전점)','3층 : 티켓발권기, 매점, 남자/여자 화장실, 수유실, 퇴장로
4층 : MX관, 1관~3관, 5관~7관, 남자/여자 화장실','산업과 쇼핑 그리고 문화가 공존하는
그 중심 LIFE THEATER 필름모아 대전현대아울렛점!');
insert into tblTheater values(seqTheater.nextVal,'세종(조치원)','세종','세종특별자치시 조치원읍 새내로 122 필름모아','4층 : 매점, 매표소, 남자화장실, 여자화장실, 그 외 편의시설
5층 : 1관, 2관, 3관, 4관, 5관, 수유실, 남자화장실, 여자화장실','세종시민들을 위한
5개관 총 749석 규모의 세종시 첫번째 오픈 영화관');
insert into tblTheater values(seqTheater.nextVal,'세종나성','세종','세종특별자치시 나성로 38, 4~6층(나성동, 세종 가로수길 건물)','4층 B동 : 상영관 4관, 5관 퇴장로 / 남,여 화장실
5층 B동 : 상영관 4관, 5관 입장로 / 남,여 화장실
5층 A동 : 매표소, 매점 / 영화 무인발권기 상영관 1관, 2관, 3관 퇴장로 / 남,여 화장실
6층 A동 : 상영관 1관, 2관, 3관 입장로 / 남,여 화장실','세종의 중심 Life Theater, 필름모아 세종 나성지점!
JBL스피커로 즐기는 실감나는 DOLBY 7.1 사운드 음향!');
insert into tblTheater values(seqTheater.nextVal,'세종청사','세종','세종특별자치시 도움3로 19, 엠브릿지 B1층(어진동) 30116','B1 : 매표소, 매점, 무인발권기, 1~6관, 남녀 화장실
B2 : 퇴장로, 지하차장','세종시 유일 전석 소파석 도입
전관 레이저 영사기, JBL 스피커 설치로 편안하고 쾌적한 영화 관람 환경 조성');
insert into tblTheater values(seqTheater.nextVal,'오창','충청','충북 청주시 청원구 오창읍 중심상업1로 8-9, 3층','3층 : 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
4층 : 매표, 매점, 1~8관, 무인발권기, 에스컬레이터, 남자 · 여자 화장실','보다 편하고 안락하게 관람하기 위한 VIP관 운영!
8개관 총 1,013석 규모의 오창 최초의 영화관!');
insert into tblTheater values(seqTheater.nextVal,'제천','충청','충청북도 제천시 남천동 의병대로18길 1 TTC영화관','1층 : 매표소, 매점
2층 : 1관, 2관, 3관, 5관
3층 : 6관, 7관, 8관','제천 유일의 전관 소니 디지털상영관 and 리얼디 3D 상영관(3개관)
제천 유일의 영화문화를 즐길수 있 티플렉스 (구 티티씨)');
insert into tblTheater values(seqTheater.nextVal,'진천','충청','충청북도 진천군 진천읍 중앙북1길 3 진천터미널','3층 : 매표소, 매점,브리오쉬 카페, 로비, 엘리베이터, 에스컬레이터, 남자 , 여자 화장실
4층 : 1관,2관,3관,4관 남자 ,여자 화장실 엘리베이터, 에스컬레이터, 자판기','편안하게 누워서 관람할 수 있는 전관 리클라이너 좌석!
충북 진천군 유일의 최대 프리미엄 영화관! 4개관 총 372석 규모');
insert into tblTheater values(seqTheater.nextVal,'천안','충청','충청남도 천안시 서북구 1공단 1길 52 센트하임프라자 3층 필름모아 천안지점','3층 : 매표소, 매점, 푸드코트, 화장실
4층 : 1~9관, 화장실2','9개관 1,300석 가죽시트 도입 / 전관 4k 디지털 시스템과 4way 사운드
COMFORT 4,5관 (사이드테이블, 더블암체어)');
insert into tblTheater values(seqTheater.nextVal,'청주사창','충청','충청북도 청주시 서원구 사창동 1순환로 682','1층 : 매표소, 매점
4층 : 4관, 남자 화장실
B1층 : 1관,2관,3관, 남자/여자 화장실','청주의 첫 번재 Life Theater, 필름모아 청주사창점
친환경 영화관 필름모아 그린박스 청주사창점');
insert into tblTheater values(seqTheater.nextVal,'충주','충청','충청북도 충주시 예성로 151','본관1층 : 주차장
신관2층 : 매표소, 매점
신관3층 : 8관, 9관, 10관, 11관','저렴한 가격과 편안한 로얄석을 겸비한
충주 젊음의 거리 중심가의 멀티 문화공간 필름모아 충주점');
insert into tblTheater values(seqTheater.nextVal,'홍성내포','충청','충청남도 홍성군 홍북읍 청사로 174번길 2, 6층 필름모아 홍성내포점','6층 : 매표소, 매점, 무인 발권기, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
7층 : 1관, 2관, 3관, 4관, 5관, 남자 · 여자 화장실 엘리베이터, 에스컬레이터','내포신도시 최고의 문화복합공간!
더 밝고 깨끗한 화질을 위한 최신형 영사기 도입!');
insert into tblTheater values(seqTheater.nextVal,'경북도청','경상','경상북도 예천군 호명면 새움3로 70 3층','3층 : 매표, 매점,남자,여자 화장실
4층 : 1관~6관 퇴장로 , 남자,여자 화장실
5층 : 1관~6관 입장로 , 남자,여자 화장실','경북도청 중심상권에 위치한 예천 최대 규모의 프리미엄 영화관
3D상영관, 전관 리클라이너 좌석 설치');
insert into tblTheater values(seqTheater.nextVal,'경산하양','경상','경상북도 경산시 하양읍 대경로 765','2층 : 매표소, 매점, 무인 발권기, 1관, 2관, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
3층 : 게임장
4층 : 3관, 4관, 5관, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실','하양 최초의 영화관! 5개관 총565석 규모
안락하고 쾌적한 관람을 위한 전관 가죽시트!');
insert into tblTheater values(seqTheater.nextVal,'구미강동','경상','경북 구미시 인동가산로 14 시네마월드 7층 필름모아 구미강동지점','7층 : 매표소, 매점, 1관, 2관, 3관, 남, 여자화장실
9층 : 4관, 5관, 6관, 남, 여자화장실','구미시의 초대형 멀티플렉스 영화관 필름모아 구미강동!
독일 kinoton 사의 영사 시스템, Dolby Digital 시네마 프로세서');
insert into tblTheater values(seqTheater.nextVal,'김천','경상','경상북도 김천시 김천로74 한일빌딩4층','4층 : 매표소, 매점, 무인 발권기, 1관,2관, 로비, 엘리베이터,남자,여자 화장실
6층 : 3관,4관, 남자,여자 화장실 엘리베이터, 자판기','김천의 유일한 멀티플렉스 극장
김천역에서 도보3분거리에 위치');
insert into tblTheater values(seqTheater.nextVal,'남포항','경상','경상북도 포항시 남구 오천읍 하원로47번길9 필름모아 남포항지점','1층 : 매표소, 매점, 무인발권기, 1관~6관 로비, 엘리베이터, 남자/여자 화장실, 자판기','오천읍 최초의 멀티플렉스 영화관! 6개관 총 663석 규모
좌석의 간격이 보다 넓고 위생적인 가죽시트');
insert into tblTheater values(seqTheater.nextVal,'대구(칠성로)','대구','대구 북구 침산로 93 스펙트럼시티 4층 필름모아 대구지점','4층 : 1관, 2관, COMFORT 3관, COMFORT 4관, 5관, 6관, 7관, 8관, 9관, 10관, 매점, 매표소, 남자화장실, 여자화실, 장애인화장실','2002년 4월 26일 오픈한 북구 최고의 극장
최적의 관람환경을 대표하는 COMFORT 4관과 두 손이 자유로운 Front Table의 COMFORT 3관');
insert into tblTheater values(seqTheater.nextVal,'대구신세계(동대구)','대구','대구 동구 동부로 149 신세계백화점 8~9층 필름모아 대구신세계지점','8층 : 매표소, 스넥바(팝콘 박스), 화장실(남,여), 장애인 화장실(남,여), 상영관 퇴장로(MX관, 2~6관)
9층 : 상영관 입장로(MX관, 2~6관), 화장실(남,여)','필름모아가 대구 지역 최초로 고화질 영상과 생생한 사운드를 선사하는 기술 특화관 MX관
 전 좌석 가죽시트와 JBL사운드에서 즐기는 일반관으로 총 6개의 상영관을 오픈합니다.');
insert into tblTheater values(seqTheater.nextVal,'대구이시아','대구','대구광역시 동구 봉무동 팔공로49길 51','2층 : 매표소, 매점, 무인 발권기, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실
3~4층 : 1~7상영관, 고객대기공간, 남자 · 여자 화장실 엘리베이터, 에스컬레이터, 자판기','[ 대구 프리미엄 영화관 ] 전 좌석 리클라이너, 프라이빗한 모션베드 단독룸 BALCONY
전관 레이저 영사기 대구 최초 도입! 생생하고 선명한 화질');
insert into tblTheater values(seqTheater.nextVal,'덕천','부산','부산광역시 북구 덕천동 만덕대로 23 폴라렉스','7층 : 매표,매점,COMFORT 1~4관, 남자화장실, 여자화장실, 카페(투썸플레이스)
9층 : 9층 COMFORT 5~9관, 남자화장실, 여자화장실','전 상영관 편안하고 안락한 리클라이너 좌석
3D입체상영 및 전관 디지털4K 상영');
insert into tblTheater values(seqTheater.nextVal,'마산','경상','경남 창원시 마산합포구 해안대로 51 유로스퀘어 6층 (구 성지아울렛 6층) 필름모아 마산 지점','6층 : 매표소, 매점, 1관, 2관, 3관, 4관, 5관, 6관, 화장실(남/여), 장애인화장실(남/여)','총 6개 상영관 1,043석 보유 / 유로스퀘어(마산보건소 옆) 6층 위치
최적의 관람환경을 대표하는 SIDE TABLE의 COMFORT관(1관) / 더블암체어(2관~6관)');
insert into tblTheater values(seqTheater.nextVal,'문경','경상','경상북도 문경시 모전로 65(모전동 홈플러스 1층) 필름모아 문경지점','1층 : 매표소, 매점, 1관~3관 상영관','문경 최초의 멀티플렉스 영화관
쇼핑, 식사 등 다양한 볼거리, 즐길거리를 갖춘 문경의 복합 화 공간');
insert into tblTheater values(seqTheater.nextVal,'부산극장','부산','본관-부산광역시 중구 비프광장로 36(남포동5가) / 신관- 부산광역시 중구 비프광장로 28(남포동5가)','본관4층 : 9관(Table), 매표소, 매점, 남자화장실, 여자화장실, 휴게실
본관5층 : 상영관 1, 2, 3관 , 남자화장실, 여자화장실
신관3층 : 매표소, 매점, 상영관8관, 휴게실, 남자화장실, 여자화장실, 장애인 화장실
신관4층 : 상영관 4,5,6,7관, 남자화장실, 여자화장실','완벽한 조율의 3S System(Sound, Screen, Seat)
4개관(1,2,3,9(TABLE)) 전좌석 Double Arm Chair(Premium Chair)');
insert into tblTheater values(seqTheater.nextVal,'부산대','부산','부산시 금정구 장전로 12번길 55,라퓨타 아일랜드 4층 필름모아 부산대지점','4층 : 매표소, 매점
5층 : 1관, 2관, 컴포트 3관, 4관, 남자 · 여자 화장실
7층 : 5관, 6관, 남자 · 여자 화장실
9층 : 7관, 남자 · 여자 화장실','부산대역 3분 거리에 위치! 7개관 총 1,065석 규모
젊음이 넘치는 대학로 중심의 극장');
insert into tblTheater values(seqTheater.nextVal,'북대구(칠곡)','대구','대구광역시 북구 동암로 100','6층 : 럭셔리 상영관, 양팔형 좌석 1, 2관, 남자화장실, 여자화장실
8층 : 노블레스 상영관, 양팔형좌석 및 커플석 3, 4관, 남자화장실, 여자화장실
10층 : 프레스티지 상영관 , 양팔형좌석5, 6관, 남자화장실 , 여자화장실','인구 25만의 자족신도시 대구 칠곡 최초의 멀티플렉스
쇼핑, 영화, 외식까지 한 번에 즐기는 칠곡 문화의 중심');
insert into tblTheater values(seqTheater.nextVal,'삼천포','경상','경상남도 사천시 해안관광로 109-10(실안동), 아르떼 리조트 본관 4층','4층 : 매표소, 매점, 1~3관, 엘리베이터, 남/여 화장실, 장애인화장실, 아르떼리조트 프론트','세상 어디에도 없는! 바다가 보이는 영화관
3개관 전 좌석 편안하게 누워서 관람하는 최고급 좌석 도입');
insert into tblTheater values(seqTheater.nextVal,'양산','경상','경상남도 양산시 중부동 강변로 440 쇼핑몰 바나나빌딩','6층 : 매표소, 매점, 1관, 화장실(남/여), 장애인화장실(남/여)
8층 : 2관, 3관, 4관, 화장실(남/여), 장애인화장실(공용)
9층 : 5관, 6관, 화장실(남/여), 장애인화장실(공용)','양산 중심 지역에 위치한 최대 규모의 프리미엄 영화관
전 상영관, 전 좌석 180도 편안하게 누워서 관람하는 최고급 리클라이너 좌석!');
insert into tblTheater values(seqTheater.nextVal,'양산라피에스타','경상','경산남도 양산시 물금읍 증산역로 177,6~7층 라에스타','6층 : 매표소, 매점, 화장실(남여), 무인발권기, 상영관 퇴장로(1-7관)
7층 : 상영관 입장로 (1관-7관), 화장실 (남,여), 장애인화장실 (남,여)','양산지역 최고, 최대 규모의 Life Theater, 필름모아 양산라피에스타
최고 사양 JBL 스피커로 즐기는 실감나는 DOLBY 사운드 음향');
insert into tblTheater values(seqTheater.nextVal,'울산','경상','울산광역시 중구 젊음의거리73(성남동) 필름모아 울산지점','2층 : 로비, BOX OFFICE, 남자화장실, 여자화장실
3층 : 1관, 2관 ,컴포트3관, 남자화장실, 여자화장실, 장애인 화장실
5층 : 4관, 5관, 컴포트6관, 남자화장실, 여자화장실
7층 : 7관, 8관, 남자화장실, 여자화장실','울산의 중심가 성남동에 위치
전좌석 가죽시트로 안락하고 쾌적한 영화관람 제공');
insert into tblTheater values(seqTheater.nextVal,'정관','부산','부산광역시 기장군 정관읍 정관6로 39, 큐엠시네마타워 5층 필름모아 정관점','5층 : 매표소, 매점, 무인 발권기, 1관, 2관, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실, 게임랜드
6층 : 3관, 4관, 5관, 6관, 남자 · 여자 화장실, 엘리베이터, 에스컬레이터, 자판기','더 밝고 깨끗한 화질을 위한 전관 레이저 상영관! 6개관 총 578석 규모
편안하고 안락한 관람을 위한 전관 리클라이너 좌석!');
insert into tblTheater values(seqTheater.nextVal,'창원','경상','경상남도 창원시 성산구 용지로 58 (중앙동,필름플렉스8층) 필름모아 창원지점','8층 : 매점, 매표소, 남자화장실, 여자화장실, 기타 편의시설
9층 : 1관, 2관, 3관 남자화장실, 여자화장실
11층 : 4관, 5관, 6관, 7관, 남자화장실, 여자화장실','리뉴얼로 더욱 깔끔해진 로비와 상영관 (7개 상영관, 1,100석 규모)
경남 최초의 4way입체음향 시스템 상영관');
insert into tblTheater values(seqTheater.nextVal,'창원내서','경상','경상남도 창원시 마산회원구 내서읍 광려천서로 81 10층','10층 : 매표소, 매점, 남자/여자 화장실
11층 : 1관~5관, 남자/여자 화장실','진정한 영화의 즐거움.
다르게, 그리고 기분 좋게');
insert into tblTheater values(seqTheater.nextVal,'해운대(장산)','부산','부산광역시 해운대구 해운대로 813 (좌동, NC백화점 8층) 필름모아 해운대(장산)지점','8층 : 매표소, 매점, 라운지, 게임몰, 1관, 2관, 3관, 4관, 5관, 6관, 7관, 화장실','깔끔한 로비와 상영관');
insert into tblTheater values(seqTheater.nextVal,'광주상무','광주','광주광역시 서구 치평동 시청로60번길 21 콜롬버스시네마','본관3층 : 상영관 (1,2관), 매점, 매표소, 티켓머신, 남자화장실, 여자화장실, 장애인화장실
본관5층 : 상영관 3,4,5,6관, 남자화장실, 여자화장실
별관6층 : 상영관 7,8,9,10관, 매표소, 매점, 티켓머신, 남자화장실(장애인용 포함), 여자화장실(장애인용 포함)','광주의 중심, 문화의 랜드마크
지역최초, 최다관의 진정한 멀티플랙스');
insert into tblTheater values(seqTheater.nextVal,'광주하남','광주','광주광역시 광산구 우산동 풍영철길로 15 콜럼버스월드','4층 : 1관, 2관, 3관, 4관, 5관, 6관, 7관, 8관, 9관, 10관, 남자화장실(장애인용 포함), 여자화장실(장애인용 포함)
3층 : 매표소, 매점, 무인발권기, 남자화장실(장애인용 포함), 여자화장실(장애인용 포함)','깔끔한 로비와 상영관');
insert into tblTheater values(seqTheater.nextVal,'목포하당(포르모)','전라','전라남도 목포시 옥암로 95 (상동) 포르모큐브몰 3층','3층 : 매표소, 매점, 무인 발권기, 로비, 엘리베이터, 에스컬레이터, 남자,여자 화장실
4층 : 1관 ~ 7관
5층 : 영사실','6채널 분리방식의 돌비 서라운드 음향시설');
insert into tblTheater values(seqTheater.nextVal,'송천','전라','전라북도 전주시 덕진구 송천동2가 동부대로 1215 필름모아','3층 : 매표, 매점, 남자화장실, 여자화장실, 오락실, 커피숍
4층 : 1 ~ 8관(전상영관), 남자화장실, 여자화장실','비빔밥 숟가락 대신 티켓 한 장이면, 문화생활이 뚝딱!
쿵쾅쿵쾅, 전주문화제작소!');
insert into tblTheater values(seqTheater.nextVal,'순천','전라','전라남도 순천시 덕암동 충효로 15 필름모아','5층 : 표소, 매점, 남.여 화장실
7층 : 1~7관, 남.여 화장실','누워서 보는 영화관
우아한 천연가죽의 리클라이너 소파');
insert into tblTheater values(seqTheater.nextVal,'여수웅천','전라','전남 여수시 신월로 96 3층 필름모아 여수웅천점','3층 : 매표소, 매점, 무인 발권기,플레이타임(키즈카페), 달콤커피, 푸른안경점, 게임룸, 맘스터치, 화장실
5층 : 1~5관, 남자 · 여자 화장실, 엘리베이터, 에스컬레이터, 자판기
6층 : 6~8관, 남자 · 여자 화장실, 엘리베이터, 에스컬레이터, 자판기','여수 신도시 웅천지구의 랜드마크 8개관 1100석 규모
연인, 가족들을 위한 모션베드(커플석 설치)');
insert into tblTheater values(seqTheater.nextVal,'전대(광주)','광주','광주광역시 북구 중흥동 우치로 60','3층 : 1관, 2관, 매표소, 매점, 남자화장실, 장애인 남자화장실, 여자화장실, 장애인 여자화장실
4층 : 3관, 4관, 5관, 남자화장실, 여자화장실
6층 : 6관, 7관, 남자화장실, 여자화장실','7개의 상영관, 958석 규모의 북구 최고의 영화관!
광주 최초! 미세먼지, 진드기로부터 안전한 가죽시트 교체!!');
insert into tblTheater values(seqTheater.nextVal,'전주혁신','전라','전라북도 전주시 덕진구 기지로 77 (장동, 전북혁신도시 더 M city 센텀) 2층','2층 : 매표소, 매점, 1관~7관, 남자·여자 화장실','가장 진화된 Dolby ATMOS 사운드시스템
가죽시트 및 리클라이너 좌석, 전관 레이져영사기로');
insert into tblTheater values(seqTheater.nextVal,'첨단','광주','광주광역시 광산구 쌍암동 앰코로 35 폭스존','4층 : 매표소, 상영관(9개관), 라운지, 매점, 커피전문점','전관 디지털 영사시스템 , 실감나는 3D 상영 (가볍고 편안한 안경)
2019년 리모델링으로 리클라이너 (커플석), 리클라이너( 로얄석) 완비');
insert into tblTheater values(seqTheater.nextVal,'남춘천','강원','강원도 춘천시 춘천로17번길 17 (온의동, 뉴타운빌딩 2F)','1층 : 상가 로비, 영화관 출입구, 주차, 중앙통행로, 화장실, 편의점, 파스쿠치, 맘스터치, 미스사이공 등
2층 : 영화관 로비, 매표, 매점, 무인발권기, 상영관 출입구(1~7관), 게임파크, 인생사진, E/V, 화장실 등
2~3층 : 1~7관','7개 상영관 전관이 같은층에 위치한 춘천 유일한 영화관으로 높은 층고가 주는 탁트인 공간과
퍼스널 스페이스를 배려한 양팔걸이 좌석은 여유로운 문화생활을 가능케 합니다.');
insert into tblTheater values(seqTheater.nextVal,'속초','강원','강원도 속초시 조양동 조양로142번길 20 필름모아','8층 : 매표소, 매점, 부대시설, 남자화장실, 여자화장실, 장애인 화장실
9층 : 1관, 2관, 3관, 4관, 5관, 남자화장실, 여자화장실, 장애인 화장실','영동권 최초 멀티 플렉스 영화관
당일 영화 관람객은 주차요금이 무료(관람일 무료)');
insert into tblTheater values(seqTheater.nextVal,'원주','강원','강원도 원주시 단계동 서원대로 165 아트스페이스빌딩','6층 : 1관, 2관, 3관, 5관, 매점, 매표소, 남자화장실2, 여자화장실2
7층 : 6관, 7관, 8관, 9관, 남자화장실1, 여자화장실1','전 상영관 소니 디지털 4K 설치
3시간 무료주차와 무료 발레파킹');
insert into tblTheater values(seqTheater.nextVal,'원주센트럴','강원','강원도 원주시 황금로 2, 센트럴파크 7층 / 강원도 원주시 양지로 80, (반곡동, 센트럴파크 7층)','7층 : 8관, 9관, 매표소, 매점, 무인발권기, 로비, 엘리베이터, 에스컬레이터, 남자 · 여자 화장실, 게임센터
8층 : 1관, 2관, 3관, 4관, 5관, 6관 7관. 남자 · 여자 화장실, 엘리베이터, 에스컬레이터','원주혁신도시 내 유일한 멀티플렉스 영화관!
원주시 최초 커플석 도입!');


















-- 영화 테이블 드랍
-- drop table tblMovie;
-- drop sequence seqMovie;

 
create table tblMovie(
    
    movieSeq number primary key,            -- 영화번호(PK)
    movieKorName varchar2(50) not null,     -- 영화이름(한글)
    movieEngName varchar2(50) not null,     -- 영화이름(영문)
    movieGenre varchar2(50) not null,        -- 장르
    movieOpen date not null,                  -- 개봉일
    movieDirector varchar2(30) not null,     -- 감독
    movieActor varchar2(100)   not null,     -- 주연배우
    movieTime number not null,               -- 러닝타임
    movieCountry varchar2(50) not null,      -- 국가
    movieCompany varchar2(50) not null,     --배급사
    movieFormat varchar2(20)  default '2D', -- 영화상영포맷
    movieAge number not null,                 -- 상영등급
    moviePoster varchar2(100)                  -- 포스터


);

-- 시퀀스 생성
create sequence seqMovie;


--====================================================================================================================
--더미데이터 



--개봉작(20개)

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '모가디슈', 'Escape from Mogadishu', '드라마,액션', '2021-07-28', '류승완', '김윤석,조인성,허준호,구교환', 121 ,  '한국' ,  '롯데엔터테인먼트' ,  default ,  3 ,  '모가디슈.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '블랙 위도우', 'Black Widow', 'SF,액션,어드벤처', '2021-07-07', '케이트 쇼트랜드', '스칼렛 요한슨, 플로렌스 퓨, 레이첼 와이즈, 데이빗 하버' , 134, '미국', '월트 디즈니 컴퍼니 코리아', '2D(자막)', 2, '블랙 위도우.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '블랙 위도우', 'Black Widow', 'SF,액션,어드벤처', '2021-07-07', '케이트 쇼트랜드', '스칼렛 요한슨, 플로렌스 퓨, 레이첼 와이즈, 데이빗 하버', 134, '미국', '월트 디즈니 컴퍼니 코리아', '3D(자막)', 2, '블랙 위도우.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '이스케이프 룸 2: 노 웨이 아웃', 'Escape Room: Tournament of Champions', '공포(호러),스릴러,액션', '2021-07-14', '애덤 로비텔', '테일러 러셀,로건 밀러', 88, '미국', '소니 픽처스 코리아', '2D(자막)', 3, '이스케이프룸2.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '랑종', 'The Medium', '공포(호러),드라마,스릴러', '2021-07-14', '반종 피산다나쿤', '나릴야 군몽콘켓, 싸와니 우툼마, 씨라니 얀키띠칸, 야사카 차이쏜', 131, '태국', '쇼박스', '2D(자막)', 4, '랑종.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '크루엘라', 'Cruella', '드라마,범죄,코미디', '2021-05-26', '크레이그 질레스피', '엠마 스톤, 엠마 톰슨, 마크 스트롱', 133, '미국', '월트디즈니컴퍼니 코리아', '2D(자막)', 2, '크루엘라.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '발신제한', 'HARD HIT', '드라마,스릴러', '2021-06-23', '김창주', '조우진, 이재인, 진경', 94, '한국', 'CJ ENM', default, 3, '발신제한.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '루카', 'Luca', '애니메이션,어드벤처,코미디', '2021-06-17', '엔리코 카사로사', '제이콥 트렘블레이, 엠마 버만, 잭 딜런 그레이져', 95, '미국', '월트 디즈니 컴퍼니 코리아', '2D(자막)', 1, '루카.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '콰이어트 플레이스 2', '(A Quiet Place: Part II', '스릴러', '2021-06-16', '존 크랜신스키', '에밀리 블런트, 킬리언 머피, 밀리센트 시몬스, 노아 주프, 디몬 하운수', 97, '미국', '파라마운트 픽처스', '2D(자막)', 3, '콰이어트플레이스2.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '이도공간', 'Inner Senses', '스릴러', '2021-07-21', '나지량', '장국영, 임가흔', 100, '홍콩', '엣나인필름', '2D(자막)', 2, '이도공간.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '트립 투 그리스', 'The Trip to Greece', '드라마,코미디', '2021-07-08', '마이클 윈터바텀', '스티브 쿠건, 롭 브라이든', 103, '영국,그리스', '찬란(Challan Film)', '2D(자막)', 3, '트립투그리스.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '라라랜드(2016)', 'La La Land', '드라마', '2021-07-25', '데이미언 셔젤', '라이언 고슬링,엠마 스톤,존 레전드', 127, '미국', '서밋 엔터테인먼트', '2D(자막)', 2, '라라랜드.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '나의 소녀시대(2016)', '我的少女時代',  '멜로,로맨스', '2021-07-25', '천위산(프랭키 첸)', '쑹윈화,왕다루,리위시,젠팅루이', 131, '대만', '오드 AUD', '2D(자막)', 3, '나의소녀시대.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '소울', 'Soul', '애니메이션', '2021-07-24', '피트닥터', '제이미 폭스,티나 페이,그레이엄 노턴,레이철 하우스,앨리스 브라가', 101, '미국', '월트 디즈니 스튜디오스 모션 픽처스', '2D(자막)', 1, '소울.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '인터스텔라(2014)', 'Interstellar', 'SF', '2021-06-28', '크리스토퍼 놀란', '매튜 맥커너히,앤 해서웨이,제시카 채스테인,빌 어윈', 169 , '미국,영국', '워너 브라더스', '2D(자막)', 2, '인터스텔라.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '인셉션(2010)', 'Inception', '액션,모험,SF,스릴러', '2021-06-30', '크리스토퍼 놀란', '레오나르도 디카프리오,와타나베 켄,조셉 고든 레빗,엘렌 페이지', 148, '미국,영국', '워너 브라더스', '2D(자막)', 2, '인셉션.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '쥬라기 월드(2015)', 'Jurassic World', '액션', '2021-06-22', '콜린 트레보로우', '크리스 프랫,브라이스 달라스 하워드,빈센트 도노프리오,타이 심킨스', 125 , '미국', '유니버설 픽처스', '2D(자막)', 2, '쥬라기월드1.jpg');

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '배드 지니어스(2017)', 'Bad Genius', '스릴러', '2021-06-01', '나타우트 폰피리야', '추티몬 추엥차로엔수키잉, 차논 산티네톤쿨, 에이샤 호수완', 130 , '태국', 'GDH 559', '2D(자막)', 2, '배드지니어스.jpg');


insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '뷰티 인사이드(2015)', 'The Beauty Inside', '멜로,로맨스', '2021-06-10', '백종열', '한효주, 김대명, 박서준, 서강준, 천우희, 배성우', 127, '한국', '(주)NEW', default, 2, '뷰티인사이드.jpg');


insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)
values (seqMovie.nextVal, '비긴 어게인(2013)', 'Begin Again', '드라마', '2021-06-15', '존 카니', '키아라 나이틀리, 마크 러팔로, 애덤 리바인', 104, '미국', '(주)NEW', default, 3, '비긴어게인.jpg');





-- 개봉 예정작 (6개)

insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster)values (seqMovie.nextVal, '더 그레이트 샤크' , 'Great White' , '공포,스릴러' , '2021-08-05', '마틴 윌슨', '카트리나 보우든', 91, '오스트레일리아, 미국, 영국', '조이앤시네마 (JOY N CINEMA)', '2D(자막)', 2, '더 그레이트 샤크.jpg');
insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster) values (seqMovie.nextVal, '올드', 'Old', '공포,스릴러', '2021-08-18', 'M.나이트 샤말란', '가엘 가르시아 베르날, 빅키 크리엡스, 토마신 맥켄지, 알렉스 울프', 108, '미국', 'UPI 코리아', '2D(자막)', 2, '올드.jpg');
insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster) values (seqMovie.nextVal, '인질', 'Hostage: Missing Celebrity', '스릴러,액션', '2021-08-18', '필감성', '황정민', 94, '한국', '(주)NEW', default , 3, '인질.jpg');
insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster) values (seqMovie.nextVal, '드림걸즈(2006)', 'Dreamgirls', '드라마,뮤지컬', '2021-08-01', '빌 콘돈', '비욘세 놀즈,제이미 폭스', 129, '미국', '(주)영화사 오원', '2D(자막)', 3, '드림걸즈.jpg');
insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster) values (seqMovie.nextVal, '폰(2002)', 'Phone', '공포', '2021-07-28', '안병기', '하지원,김유미,최우제', 104, '한국', '브에나비스타 코리아', default, 3, '폰.jpg');
insert into tblMovie (movieSeq, movieKorName, movieEngName, movieGenre, movieOpen, movieDirector, movieActor, movieTime, movieCountry, movieCompany, movieFormat, movieAge, moviePoster) values (seqMovie.nextVal, '생각의 여름', 'Midsummer Madness', '드라마', '2021-08-12', '김종재', '김예은, 곽민규, 한해인', 82, '한국', '인디스토리', default, 2, '생각의여름.jpg');



-- 커밋
commit;



-- 테이블 확인
select * from tblMovie;

select * from tblTheater where theaterName='강남' or theaterName='분당' or theaterName='송도' or theaterName='대전' or theaterName='대구(칠성로)' or theaterName='송천' or theaterName='속초';
select * from tblMovie;
drop table tblSchedule;
drop sequence seqSchedule;

create table tblSchedule(
    scheduleSeq number primary key,
    scheduleDate date,
    scheduleTime date,
    theaterRoomName varchar(10),
    theaterSeq number references tblTheater(theaterSeq),
    movieSeq number references tblMovie(movieSeq)
);

create sequence seqSchedule;

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 12:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:25:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 12:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 15:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 17:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 08:40:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 13:50:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 17:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 13:50:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 08:40:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 13:50:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 17:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:45:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 08:40:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:15:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 11:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 14:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 16:55:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-19',to_date('2021-07-19 19:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
        
        insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 12:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:25:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 12:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 15:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 17:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 08:40:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 13:50:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 17:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 13:50:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 08:40:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 13:50:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 17:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:45:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 08:40:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:15:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 09:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 11:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 14:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 16:55:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-20',to_date('2021-07-20 19:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
        
        insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 12:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:25:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 12:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 15:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 17:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 08:40:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 13:50:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 17:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 13:50:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 08:40:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 13:50:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 17:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:45:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 08:40:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:15:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 09:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 11:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 14:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 16:55:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-21',to_date('2021-07-21 19:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
        
        insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 12:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:25:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 12:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 15:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 17:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 08:40:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 13:50:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 17:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 13:50:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 08:40:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 13:50:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 17:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:45:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 08:40:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:15:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 09:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 11:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 14:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 16:55:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-23',to_date('2021-07-23 19:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
        
        insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 12:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:25:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 12:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 15:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 17:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 08:40:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 13:50:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 17:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 13:50:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 08:40:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 13:50:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 17:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:45:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 08:40:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:15:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 09:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 11:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 14:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 16:55:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-24',to_date('2021-07-24 19:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
        
        


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',1,5);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',1,1);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 12:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',1,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',29,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:25:00','yyyy-mm-dd hh24:mi:ss'),'3관',29,6);

insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 12:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 15:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 17:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:50:00','yyyy-mm-dd hh24:mi:ss'),'4관',29,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 08:40:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 13:50:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 17:15:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',48,5);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',48,6);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 13:50:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 17:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',54,1);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:45:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'7관',54,5);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 08:40:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 13:50:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 17:15:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:45:00','yyyy-mm-dd hh24:mi:ss'),'8관',73,1);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',73,6);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 08:40:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:15:00','yyyy-mm-dd hh24:mi:ss'),'5관',93,2);



insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:45:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'6관',93,8);




insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 08:40:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:15:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'1관',100,5);


insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 09:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 11:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 14:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 16:55:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);
insert into tblSchedule values(seqSchedule.nextVal,'2021-07-30',to_date('2021-07-30 19:30:00','yyyy-mm-dd hh24:mi:ss'),'4관',100,2);


drop table tblEvent;
create table tblEvent (
    eventSeq number primary key,
    eventTitle varchar2(100) not null,   
    eventThumbnail varchar2(100) not null,
    eventPoster varchar2(100) not null,
    eventType varchar2(50) not null,
    eventRegdate date default sysdate not null,
    eventStartdate date not null,
    eventEnddate date not null
);

create sequence seqEvent;

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'극장 룰렛 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','스페셜','2021-07-03','2021-07-21','2021-07-26');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'영화 코스프레 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','스페셜','2021-07-19','2021-07-23','2021-07-25');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'극장 퀴즈 마스터 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','스페셜','2021-07-08','2021-07-15','2021-07-15');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'필름모아 SNS에 좋아요 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','스페셜','2021-07-05','2021-07-17','2021-08-07');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'필름모아 노래를 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','스페셜','2021-07-10','2021-07-25','2021-08-25');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'인증샷 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','스페셜','2021-07-17','2021-07-19','2021-08-19');

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'극장 한복 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','감동','2021-07-19','2021-07-23','2021-07-23');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'영화 감상문 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','감동','2021-07-18','2021-07-27','2021-08-27');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'영화 댄스타임 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','감동','2021-07-20','2021-07-24','2021-07-26');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'코메디 영화 웃참 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','감동','2021-07-20','2021-07-28','2021-07-28');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'쏠로 영화 데이','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','감동','2021-07-24','2021-07-26','2021-07-26');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'로맨틱 영화 커플 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','감동','2021-07-25','2021-07-29','2021-07-29');

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'여름 공포 영화 릴레이','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','썸머','2021-07-05','2021-07-16','2021-07-17');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'시원한 영화 감상','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','썸머','2021-07-09','2021-07-17','2021-07-20');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'심야 영화 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','썸머','2021-07-15','2021-07-18','2021-07-25');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'아이스크림 먹으며 영화','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','썸머','2021-07-22','2021-07-24','2021-07-29');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'냉수 족욕 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','썸머','2021-07-23','2021-07-25','2021-07-28');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'에어컨 빵빵 이벤트','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','썸머','2021-07-24','2021-07-26','2021-07-26');

insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'해리포터 시사회','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','시사회','2021-07-15','2021-07-18','2021-07-18');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'반지의 제왕 시사회','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','시사회','2021-07-28','2021-07-30','2021-07-30');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'동막골 시사회','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','시사회','2021-07-21','2021-07-24','2021-07-24');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'알라딘 시사회','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','시사회','2021-07-25','2021-07-29','2021-07-29');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'해운대 시사회','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','시사회','2021-07-22','2021-07-22','2021-07-22');
insert into tblEvent (eventSeq,eventTitle,eventThumbnail,eventPoster,eventType,eventRegdate,eventStartdate,eventEnddate) values(seqEvent.nextVal,'레미제라블 시사회','제목을 입력해주세요.-001.png','제목을 입력해주세요.-001.png','시사회','2021-07-26','2021-07-27','2021-07-27');
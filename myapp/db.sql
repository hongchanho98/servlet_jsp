

select * from tblUser;


drop table tblBoard;
drop sequence seqBoard;

create table tblBoard(
    seq number primary key,
    id varchar2(30) not null references tblUser(id),
    subject varchar2(500) not null,
    content varchar2(4000) not null,
    regdate date default sysdate not null,
    readcount number default 0 not null,
    tag varchar2(1) not null check(tag in('y','n')) -- 글 내용에 HTML태그 허용 유무
);


create sequence seqBoard;

select * from tblboard;


select seq,(select name from tblUser where id= tblBoard.id) as name,subject,readcount,regdate from tblBoard order by seq desc;


create or replace view vwBoard
as
select seq,
        id,
        (select name from tblUser where id= tblBoard.id) as name,
        subject,readcount,regdate,
        (sysdate-regdate) as isnew,
        content,
        (select count(*) from tblComment where pseq=tblBoard.seq) as ccnt
from tblBoard;

select * from vwBoard;




create table tblComment(
    seq number primary key,                         --PK
    id varchar2(30) not null references tblUser(id), --누가 작성
    content varchar2(2000) not null,                --내용
    regdate date default sysdate not null,         -- 작성일
    pseq number not null references tblBoard(seq)  --어떤 게시글에 
);

create sequence seqComment;

select * from tblComment;


select subject, rownum from vwBoard v where rownum >11 and rownum <12; --이게 안됨!!

create or replace view vwBoard
as
select a.*,rownum as rnum from 
(select seq,
        id,
        (select name from tblUser where id= tblBoard.id) as name,
        subject,readcount,regdate,
        (sysdate-regdate) as isnew,
        content,
        (select count(*) from tblComment where pseq=tblBoard.seq) as ccnt,
        thread,
        depth
from tblBoard order by thread desc) a;

select * from vwBoard where rnum=5;


delete from tblBoard where seq between 190 and 220;
commit;




drop table tblComment;
drop sequence seqComment;

drop table tblBoard;
drop sequence seqBoard;


create table tblBoard(
    seq number primary key,
    id varchar2(30) not null references tblUser(id),
    subject varchar2(500) not null,
    content varchar2(4000) not null,
    regdate date default sysdate not null,
    readcount number default 0 not null,
    tag varchar2(1) not null check(tag in('y','n')), -- 글 내용에 HTML태그 허용 유무
    thread number not null,
    depth number not null
    
);

create sequence seqBoard;

select * from tblBoard;

select nvl(max(thread),0)+1000 as thread from tblBoard;--데이터가 없으면 null+1000 이 성립이 안됨!근데 null일시 0으로 만드는 nvl




select name,(select count(*) from tblBoard where id=tblUser.id) as cnt from tblUser;


select name,(select count(*) from tblComment where id=tblUser.id) as cnt from tblUser;


select * from tblUser;
select * from tblBoard;


create table tblPlace(
	
	seq number primary key,
	name varchar2(100) not null,
	lat number not null,
	lng number not null


);

create sequence seqPlace;


select * from tblPlace;




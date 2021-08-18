create table tblMovie(

    seq number primary key,
    title varchar2(200) not null,
    outline varchar2(200) not null,
    time number not null,
    rdate varchar2(10) not null,
    director varchar2(100) not null,
    actor varchar2(200) not null,
    poster varchar2(300) not null

);

create sequence seqMovie;
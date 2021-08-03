create or replace view vwTicketing
as
select  t.ticketingseq as ticketingSeq,
        u.userseq as userSeq,
        u.userid as userId,
        t.ticketingdate as ticketingDate,
        th.theatername as theaterName,
        s.theatherroomname as theatherRoomName,
        to_char(s.scheduledate,'yyyy-mm-dd')||'('||to_char(s.scheduledate,'dy')||')' as scheduleDate,
        to_char(s.scheduletime,'hh24:mi:ss') as scheduleTime,
        m.movietime as movietime,
        m.movieposter as moviePoster,
        m.moviekorname as movieKorname,
        m.movieformat as movieFormat,
        rownum as rNum
        from tblUser u
    inner join tblticketing t
        on u.userseq = t.userseq
            inner join tblschedule s
                on t.scheduleseq = s.scheduleseq
                    inner join tblMovie m 
                        on s.movieseq = m.movieseq 
                            inner join tbltheater th 
                                on s.theaterseq = th.theaterseq 
    order by s.scheduletime desc;
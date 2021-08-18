package com.test.etc.crawling;

import java.util.Calendar;

public class sadsda {

	public static void main(String[] args) {
		
		
		for(int i=0; i<102;i++) {
			
			Calendar cal = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
			
			
			cal.set(2021, 6, 31);
			String calen =  String.format("%tF", cal);
			
			cal2.set(2021, 7, 5);
			
			if(cal.getTimeInMillis()<cal2.getTimeInMillis()) {
			
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 08:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',"+(i+1)+",2);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 12:35:00','yyyy-mm-dd hh24:mi:ss'),'1관',"+(i+1)+",2);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 15:10:00','yyyy-mm-dd hh24:mi:ss'),'1관',"+(i+1)+",2);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 17:45:00','yyyy-mm-dd hh24:mi:ss'),'1관',"+(i+1)+",2);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 20:20:00','yyyy-mm-dd hh24:mi:ss'),'1관',"+(i+1)+",2);");
			
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',"+(i+1)+",4);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 12:50:00','yyyy-mm-dd hh24:mi:ss'),'2관',"+(i+1)+",4);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 15:25:00','yyyy-mm-dd hh24:mi:ss'),'2관',"+(i+1)+",4);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 18:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',"+(i+1)+",4);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 20:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',"+(i+1)+",4);");
			
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 08:15:00','yyyy-mm-dd hh24:mi:ss'),'3관',"+(i+1)+",7);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 12:05:00','yyyy-mm-dd hh24:mi:ss'),'3관',"+(i+1)+",7);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 15:00:00','yyyy-mm-dd hh24:mi:ss'),'3관',"+(i+1)+",7);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 17:15:00','yyyy-mm-dd hh24:mi:ss'),'3관',"+(i+1)+",7);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 20:00:00','yyyy-mm-dd hh24:mi:ss'),'3관',"+(i+1)+",7);");
			
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 09:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',"+(i+1)+",8);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 13:35:00','yyyy-mm-dd hh24:mi:ss'),'4관',"+(i+1)+",8);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 16:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',"+(i+1)+",8);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 18:45:00','yyyy-mm-dd hh24:mi:ss'),'4관',"+(i+1)+",8);");
			System.out.println("insert into tblSchedule values(seqSchedule.nextVal,'"+calen+"',to_date('"+calen+" 21:20:00','yyyy-mm-dd hh24:mi:ss'),'4관',"+(i+1)+",8);");
			}

//
//
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 09:00:00','yyyy-mm-dd hh24:mi:ss'),'2관',i+1,2);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 11:35:00','yyyy-mm-dd hh24:mi:ss'),'2관',i+1,2);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 14:10:00','yyyy-mm-dd hh24:mi:ss'),'2관',i+1,2);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 16:45:00','yyyy-mm-dd hh24:mi:ss'),'2관',i+1,2);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 19:20:00','yyyy-mm-dd hh24:mi:ss'),'2관',i+1,2);
//
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 08:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',i+1,3);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 11:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',i+1,3);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 13:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',i+1,3);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 16:10:00','yyyy-mm-dd hh24:mi:ss'),'3관',i+1,3);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 18:40:00','yyyy-mm-dd hh24:mi:ss'),'3관',i+1,3);
//			
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 08:40:00','yyyy-mm-dd hh24:mi:ss'),'4관',i+1,4);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 11:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',i+1,4);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 13:40:00','yyyy-mm-dd hh24:mi:ss'),'4관',i+1,4);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 16:10:00','yyyy-mm-dd hh24:mi:ss'),'4관',i+1,4);
//			insert into tblSchedule values(seqSchedule.nextVal,'+calen+',to_date('+calen+ 18:40:00','yyyy-mm-dd hh24:mi:ss'),'4관',i+1,4);
//			
			
			
		}
		


	}

}

package com.test.etc.crawling;

import java.io.IOException;
import java.util.Arrays;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Ex03 {

	public static void main(String[] args) throws Exception {
		
		String url ="https://movie.naver.com/movie/running/current.naver#";
		
		
		Document doc = Jsoup.connect(url).get();
		
		//div.lst_wrap > ul.lst_detail_t1 > li
		
		
		Elements list = doc.select("div.lst_wrap > ul.lst_detail_t1 > li");
		
		MovieDAO dao = new MovieDAO();
		
		for(Element item: list) {
			
			String title = item.select(".tit>a").text();
			//System.out.println(title);
			
			//String outline = item.select("dd:nth-child(2) span.link_txt").text();//<span> <a>
			//System.out.println(outline);
			
			
			String temp = item.select(".info_txt1 dd:nth-child(2)").text();
			
			temp = temp.replace(" ", "").replace("개봉", "");
			String[] templist = temp.split("\\|");
			//System.out.println(Arrays.toString(templist));
			
			String outline = "";
			String time="";
			String rdate ="";
			
			if(templist.length==2) {
				time=templist[0].replace("분", "");
				rdate =templist[1];
			}else {
				outline = templist[0];
				time=templist[1].replace("분", "");
				rdate = templist[2];
			}
			
//			System.out.println(outline);
//			System.out.println(time);
//			System.out.println(rdate);
			
			String director = item.select("dd:nth-child(4) span.link_txt").text();
			//System.out.println(director);
			
			String actor = item.select("dd:nth-child(6) span.link_txt").text();
			//System.out.println(actor);
			
			String poster = item.select(".thumb> a > img").attr("src");
			//System.out.println(poster);
			
			MovieDTO dto = new MovieDTO();
			
			if(title==null||title.equals("")) title="제목없음";
			if(outline==null||outline.equals("")) outline="개요없음";
			if(time==null||time.equals("")) time="0";
			if(rdate==null||rdate.equals("")) rdate="상영일없음";
			if(director==null||director.equals("")) director="감독없음";
			if(actor==null||actor.equals("")) actor="배우없음";
			if(poster==null||poster.equals("")) poster="포스터없음";
			
			dto.setTitle(title);
			dto.setOutline(outline);
			dto.setTime(time);
			dto.setRdate(rdate);
			dto.setDirector(director);
			dto.setActor(actor);
			dto.setPoster(poster);
			
			dao.add(dto);
			
		}
		
		System.out.println("완료");
		

	}

}

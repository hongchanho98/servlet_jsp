

import java.util.Calendar;
import java.util.Date;

public class Ex19_DataTime {

	public static void main(String[] args) {

		/*
		 * 날짜, 시간 자료형
		 * 
		 * -시간 -시각 ex 2021.04.07 09:10 -> 시간?(x) 시각?(O) -> 한축의 점 ex) 8시간, 10분 - > 시간 ->
		 * 한축의 점과 점사이의 거리
		 * 
		 * -시간과 시각은 연산의 대상이 된다.( 피연산자의 자격이 있다.) -> 산술연산,비교연산
		 * 
		 * -시각+시각 -> 2021.04.07 09:10 + 21.04.08 12:30 = ? X -시각-시각 -> 2021.04.18 -
		 * 21.04.17 = 1일 O -시각*시각 X -시각/시각 X -시각%시각 X
		 * 
		 * -시간+시간 -> 2시간 + 3시간 = O -시간-시간 -> 3시간 - 2시간 = O -시간*시간 X -시간/시간 X -시간%시간 X
		 * 
		 * - 시각+시간 -> 2021.04.27 09:40 + 1시간 = 시각 - 시각 - 시간 -> 2021.04.27 09:40 - 1시간 =
		 * 시각
		 * 
		 */

		// m1();
		//m2();
		// m3();
		//m4();
		//m5();
		//m6();
		m7();
	}

	private static void m7() {


		Calendar cal = Calendar.getInstance();
		String today= String.format("%tF",cal);
		
		String year = String.format("%02d",cal.get(Calendar.YEAR)).substring(2);
		String month = String.format("%02d",cal.get(Calendar.MONTH));
		
		System.out.printf("%tF",cal);
		
	}

	private static void m6() {
		
		//시간 + 시간
		//		시간 - 시간
		
		int hour = 2;
		int min = 30;
		
		//시간 + 시간
		min = min +20;
		System.out.printf("%시간 %분\n",hour,min);
		
		//2시간 50분+30분=>2시간 80분=> 3시간 20분
		min = min +30;
		System.out.printf("%d시간 %d분\n",hour,min);
		hour += min / 60;
		min = min %60;
		
		
		
		
	}

	private static void m5() {
		
		// 날짜 시간 연산
		// - 시각-시각 = 시간
		
		// 내가 태어난지 며칠째인지?
		
		Calendar now = Calendar.getInstance();
		Calendar birthday = Calendar.getInstance();
		birthday.set(1998, 12, 15,15,30,50);
		
		// 산술 연산자 - > 피연산자는 원시형밖에 가질 수 없다.(특히 숫자형만 가능)
		
		//The operator - is undefined for the argument type(s) java.util.Calendar, java.util.Calendar
		//System.out.println(now-birthday);
		
		// 2021-04-07 11:19:00
		// 1998-12-15 15:30:50
		//The operator - is undefined for the argument type(s) Calendar
		//now.add(now, -birthday);

		
		//기준점(기준시각)
		//1970-01-01 00:00:00
		//01-01-01 00:00:00
		
		// 2021-04-07 11:19:00
		// 1998-12-15 15:30:50
		
		//기준점 ~ 특정 시각까지의 누적 시간 -> tick값, epoch time
		System.out.println(now.getTimeInMillis());// 1617762442661
		
		long nowTick = now.getTimeInMillis();
		long birthTick = birthday.getTimeInMillis();
		//시간 : 초, 분, 시, 일 (부분허용), 월(x), 년(x)
		System.out.println((nowTick-birthTick)/1000/60/60/24);
		
		
		
		
		
		
		//홀해 크리스마스 며칠이남았는지?
		
		Calendar christmas = Calendar.getInstance();
		christmas.set(2021, 11,25,0,0,0);
		
		long christmasTick = christmas.getTimeInMillis();
		System.out.println((christmasTick-nowTick)/1000/60/60/24);
		
		
		
		
	}

	private static void m4() {

		// 날짜 시간 연산
		// - void add(int, int)
		// - 시각 + 시간

		Calendar now = Calendar.getInstance();

		// 현재시각 + 100일
		now.add(Calendar.DATE, 100);// ** **주의 !!

		System.out.printf("%tF\n", now);

		// 현재시각 + 200일       200일을 더하면 300일이 됨 add는 원본수정 원래값 유지 X
		now.add(Calendar.DATE, 100);// ** **주의 !!

		System.out.printf("%tF\n", now);

		now = Calendar.getInstance(); // 초기화 - 다시 현재 시각
		
		
		// 125일 - > 만난날?
		// now - 125
		now.add(Calendar.DATE, -125);
		System.out.printf("%tF\n", now);
		
		
		now = Calendar.getInstance(); // 초기화 - 다시 현재 시각
		
		now.add(Calendar.HOUR_OF_DAY, 4);
		now.add(Calendar.MINUTE,30);
		System.out.printf("%tF\n", now);
		
		
		
		
		
		
	}

	private static void m3() {

		// m2() : 현재시각
		// m3() : 특정시각
		// 내생일
		// - 1995년 5월 12일 15시 30분 50초
		Calendar birthday = Calendar.getInstance();

		// 일단 현재 시각을 만든 뒤 원하는 시각으로 수정을 한다.
		// 수정
		// - void set(int,int)
		// - void set(int,int,int)

		birthday.set(Calendar.YEAR, 1995);
		birthday.set(Calendar.MONTH, 4);
		birthday.set(Calendar.DATE, 12);
		// System.out.println(birthday);

		System.out.printf("%tF\n", birthday);
		System.out.printf("%tT\n", birthday);

		birthday.set(Calendar.HOUR, 15);
		birthday.set(Calendar.HOUR_OF_DAY, 15);
		birthday.set(Calendar.MINUTE, 30);
		birthday.set(Calendar.SECOND, 50);
		System.out.printf("%tT\n", birthday);

		// 수료 날짜 (2021-09-02 18:00:00)
		Calendar endDay = Calendar.getInstance();

		endDay.set(2021, 8, 2);
		endDay.set(2021, 9, 2, 18, 0, 0);
		System.out.printf("%tF %tT\n", endDay, endDay);

	}

	private static void m2() {
		// TODO 오후 4시에 김대리에게 확인 요망!!!

		// 현재 시각 얻어오기
		Calendar now = Calendar.getInstance();

		System.out.println(now);
		System.out.println();
		System.out.println();
		System.out.println();

		// Calendar 결과에서 원하는 항목을 추출하는 방법
		// - int get(int)
		System.out.println(now.get(1)); // 2021
		System.out.println(now.get(2)); // 3
		System.out.println(now.get(3)); // 15
		System.out.println(now.get(4)); // 2
		System.out.println(now.get(5)); // 7

		// 상수와 변수의 역할 차이
		int year = 1;
		System.out.println(now.get(1));
		System.out.println(now.get(year));

		// 상수를 직접 사용하지 말자 -> 반드시 변수에 담아서 사용 -> 가독성
		System.out.println(20);// ?
		int age = 20;
		System.out.println(age);// 나이

		// now.get(원하는 항목 번호)
		// int year = 1
		System.out.println(Calendar.YEAR);// 1
		System.out.println(now.get(1));
		System.out.println(now.get(year));
		System.out.println(now.get(Calendar.YEAR));

		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();

		// Calendar.???  = Calendar 상수
		System.out.println(now.get(Calendar.YEAR)); // 2021
		System.out.println(now.get(Calendar.MONTH)); // 3 1월(0)~12월(11)
		System.out.println(now.get(Calendar.DATE)); // 7 일
		System.out.println(now.get(Calendar.HOUR)); // 10 시 12시간 표기
		System.out.println(now.get(Calendar.MINUTE)); // 14 분
		System.out.println(now.get(Calendar.SECOND)); // 36 초
		System.out.println(now.get(Calendar.MILLISECOND)); // 202 밀리초 (1/1000)
		System.out.println(now.get(Calendar.AM_PM)); // 0 오전 0 / 오후 1
		System.out.println(now.get(Calendar.DAY_OF_MONTH)); // 7 // 일(Date)
		System.out.println(now.get(Calendar.DAY_OF_WEEK)); // 4 //요일. 일(1)~토(7)
		System.out.println(now.get(Calendar.DAY_OF_YEAR)); // 97 //올해들어 며칠째?
		System.out.println(now.get(Calendar.HOUR_OF_DAY)); // 10 // 시 24시간 표기
		System.out.println(now.get(Calendar.WEEK_OF_YEAR)); // 15 // 몇주차

		// 요구사항[ 오늘은 ' 2021 년 4월 7일 ' 입니다.
		System.out.printf("오늘은 '%d년 %d월 %d일' 입니다", now.get(Calendar.YEAR), now.get(Calendar.MONTH) + 1,
				now.get(Calendar.DATE));
	}

	private static void m1() {

		/*
		 * 자바의 날짜시간 자료형 - JDK 1.0 : Date 클래스 -> 거의 사용 안함(deprecated -> 소멸 예정) - JDK 1.1
		 * : Calendar 클래스 -> O - JDK 1.8 : java.time 패키지 + 클래스 -> O
		 */

		// 현재 시스템의 시간이 now라는 변수에 담긴다.
		Date now = new Date();

		System.out.println(now);

		System.out.println(now.getHours());
		System.out.println(now.getMinutes());

	}

}

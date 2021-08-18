package com.test.etc.lambda;

public class Ex02 {

	public static void main(String[] args) {

		TestClass t1 = new TestClass();
		t1.test();

		TestInterface t2 = new TestClass();
		t2.test();

		// 익명 객체
		// - 이름없는 클래스를 사용해서 만드는 객체
		// - 인터페이스를 사용한다.
		// - 딱 한번만 객체를 만들 필요가 있을 때 사용한다.
		TestInterface t3 = new TestInterface() {

			@Override
			public void test() {
				System.out.println("익명 클래스의 객체가 구현한 메소드");

			}
		};
		t3.test();

		// 자바의 람다식
		// - 위의 t3과 비교해서 정리(*********)
		// - 장점 + 목적 : 코드를 간결하게
		// - 익명 객체가 필요할 떄 람다식을 사용하면 간결하게 표현할 수 있다.
		TestInterface t4 = () -> {
			System.out.println("익명 객체가 구현한 메소드");
		};

		t4.test();

		// 람다식 = 익명객체의 추상 메소드
		// 1. 매개변수 O,X
		// 2. 반환값 O,X
		
		
		NoParameterNoReturn a1 = () ->{
			System.out.println("a1");
			
		};
		
		a1.call();
		
		
		
		
		
		ParameterNoReturn a2 =(int num)->{
			System.out.println(num);
		};
		a2.call(100);
		a2.call(200);
		a2.call(300);
		
		
		//매개변수가 1개이면 ()와 자료형을 생략 할 수 있다.
		// 실행블럭에 문장이 1개이면 {}을 생략할 수 있다
		ParameterNoReturn a3 = num -> System.out.println(num);
		a3.call(400);
		a3.call(500);
		
		
		ParameterNoReturn2 a4 = (int a,int b)-> {System.out.println(a+b);};
		
		a4.call(100,200);
		
	
		// 매개변수가 2개 이상일 때는 자료형을 생략할 수 있고, ()는 생략할 수 없다.
		ParameterNoReturn2 a5 = (a, b)-> {System.out.println(a+b);};
		a5.call(100,200);
		
		
		// 매개변수가 없을 때 () 생략할 수 없다.
		NoParameterReturn a6 = () -> { return 100;};
		System.out.println(a6.call());
		
		
		// 실행 블럭에 실행문이 하나있으면 {} 생략가능하다는데 왜 안되나?
		// return도 생략해야 하기 때문에
		NoParameterReturn a7 = () -> 100;
		System.out.println(a7.call());
		
		
		ParameterReturn a8 = (int a,int b)->{return a+b;};
		ParameterReturn a9 = (int a,int b)->a+b;
		System.out.println(a8.call(100, 200));
		
	}
}

interface TestInterface {

	void test();

}

class TestClass implements TestInterface {

	@Override
	public void test() {
		System.out.println("실명 클래스의 객체가 구현한 메소드");

	}

	public void other() {
		System.out.println("자체 구현한 메소드");
	}

}





interface NoParameterNoReturn{
	
	void call();
	
}

interface ParameterNoReturn{
	
	void call(int num);
}

interface ParameterNoReturn2{
	
	void call(int a, int b);
}



interface NoParameterReturn{
	int call();
}


interface ParameterReturn{
	int call(int a, int b);
}

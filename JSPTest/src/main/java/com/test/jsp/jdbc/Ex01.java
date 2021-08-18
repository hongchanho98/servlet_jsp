package com.test.jsp.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class Ex01 {

	public static void main(String[] args) {

//		System.out.println("콘솔 실행");

		// 1. DB접속
		// - Connection 클래스

		Connection conn = null;

		// 2. 연결 문자열 생성
		// - 접속에 필요한 정보로 구성된 문자열

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "hr";
		String pw = "java1234";

		try {

			// 3.설치한 JDBC 드라이버 로딩(ojdbc6.jar)
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 4. 접속
			// - Connection 객체 생성(new Connection()) + 오라클 접속
			// - 연결됨과 동시에 연결 정보를 가지고 있는 Connecton 객체를 반환
			conn = DriverManager.getConnection(url, id, pw); // ***** 자바와 오라클이 연결(접속O)
			System.out.println(conn.isClosed()); // 닫혀있으면 true 열려있으면 false

			// 5. 질의 (******)

			// 6. 접속 종료

			conn.close();// 닫고 닫혔는지 확인
			System.out.println(conn.isClosed());// true

		} catch (Exception e) {
			System.out.println("Ex01.main()");
		}

	}

}

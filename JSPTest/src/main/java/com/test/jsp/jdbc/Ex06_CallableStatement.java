package com.test.jsp.jdbc;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;

public class Ex06_CallableStatement {

	public static void main(String[] args) {
		
		
		//1. Statement: 정적 쿼리 실행
		//2. PreparedStatement: 동적 쿼리 실행
		//3. CallableStatement: 프로시저 실행. PreparedStatement 와 유사
		
//		m1();
//		m2();
//		m3();
//		m4();
		m5();

	}
	
	
	

	private static void m5() {

		// 프로시저
		// - select -> 다중 레코드 반환(= 커서 반환)
		
		Connection conn = null;
		CallableStatement stat = null;
		ResultSet rs = null;
		
		
		try {
			
			String sql = "{ call proc_m5(?,?) }";

			conn = DBUtil.open();
			stat = conn.prepareCall(sql);
			
			//in
			stat.setString(1, "m");
			
			//out
			stat.registerOutParameter(2, OracleTypes.CURSOR);
			
			stat.executeQuery();
			
			// *** 프로시저에서 반환한 커서는 자바에서 ResultSet으로 받는다.
			rs = (ResultSet)stat.getObject(2);
			
			while(rs.next()) {
				
				System.out.println(rs.getString("name")+","+rs.getString("gender"));
				
				
			}
			
			rs.close();
			stat.close();
			conn.close();
			
		} catch (Exception e) {


		}
		
	}




	private static void m4() {
		
		
		//프로시저 out 매개변수
		// - insert,update, delete -> 매개변수 , 결과(성공유무)
		// - select -> 단일 레코드 반환
		Connection conn = null;
		CallableStatement stat = null;
		ResultSet rs = null;
		
		
		try {
			
			//select 문 실행 -> 단일 레코드(cursor가 아니다)
			String sql = "{ call proc_m4(?,?,?,?,?) }";

			conn = DBUtil.open();
			stat = conn.prepareCall(sql);
			
			//in
			stat.setString(1, "56");
			
			//out
			
			stat.registerOutParameter(2, OracleTypes.VARCHAR);
			stat.registerOutParameter(3, OracleTypes.NUMBER);
			stat.registerOutParameter(4, OracleTypes.VARCHAR);
			stat.registerOutParameter(5, OracleTypes.VARCHAR);
			
			stat.executeQuery();
			
			//out 값 접근
			
			String name = stat.getString(2);
			int age = stat.getInt(3);
			String gender = stat.getString(4);
			String address = stat.getString(5);
			
			System.out.println(name);
			System.out.println(age);
			System.out.println(gender);
			System.out.println(address);
			
			
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {


		}
		
	}




	private static void m3() {
		
		Connection conn = null;
		CallableStatement stat = null;
		ResultSet rs = null;
		
		
		try {
			
			String sql = "{ call proc_m3(?,?,?,?,?) }";

			conn = DBUtil.open();
			stat = conn.prepareCall(sql);
			
			// in 매개변수 4개
			stat.setString(1, "홍길동홍길동홍길동홍길동홍길동홍길동");
			stat.setString(2,"29");
			stat.setString(3, "m");
			stat.setString(4, "서울시 강남구 역삼동");
			
			//out 매개변수 1개 자료형은 프로시저 out 변수의 자료형으로
			stat.registerOutParameter(5, OracleTypes.NUMBER); //**********************88
			
			stat.executeUpdate();
			
			int result = stat.getInt(5); //**************************
			
			System.out.println("결과: "+result);
			
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {


		}
		
	}




	private static void m2() {

		
		Connection conn = null;
		CallableStatement stat = null;
		ResultSet rs = null;
		
		
		try {
			
//			String sql = "{ call proc_m2('홍길동',20,'m','서울시') }";
			String sql = "{ call proc_m2(?,?,?,?) }";

			conn = DBUtil.open();
			stat = conn.prepareCall(sql);
			
			stat.setString(1, "홍길동");
			stat.setString(2,"29");
			stat.setString(3, "m");
			stat.setString(4, "서울시 강남구 역삼동");
			
			stat.executeUpdate();
			
			System.out.println("완료");
			
			
			//rs.close();
			stat.close();
			conn.close();
			
		} catch (Exception e) {


		}
		
	}

	private static void m1() {

		
		Connection conn = null;
		CallableStatement stat = null;
		
		
		try {
			
			String sql = "{ call proc_m1 }";

			conn = DBUtil.open();
			stat = conn.prepareCall(sql);
			
			System.out.println(stat.executeUpdate());
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {


		}
		
	}
	
	public static void template() {
		
		Connection conn = null;
		CallableStatement stat = null;
		ResultSet rs = null;
		
		
		try {
			
			String sql = "{ call }";

			conn = DBUtil.open();
			stat = conn.prepareCall(sql);
			
			
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {


		}
		
	}

}










































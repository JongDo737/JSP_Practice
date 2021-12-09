package com.company.aboutking.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {

	public static void main(String[] args) {
		Connection connection;
		// 		프로토콜			위치		포트번호	db이름 ? 어디에서 실행하는지 					케릭터인코딩
		String url = 
				"jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";

		String userId = "root";
		String pwd = "asd1234";
		
		// 주소 계정 비번 만 있으면 접근 할 수 있음.
		
		try {
			// 동적 바인딩을 위한 자바 기술  클래스를 사용할때 객체화 시킬떄 컴파일때 타입을 설정한다.
			// 동적 바인딩 : 컴파일 시점에 문자열로 저장해두고 런타임시점에 객체로 만들어버리는 기술
			//실행시키는 순간 메모리에 올라가서 쓸수 있게 됌
			//MySql JDBC Driver 이름입ㅁ니다. ( 오라클, MSSQL )
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, userId, pwd);
			
			//오류가 뜨지 않았다면 출력
			System.out.println("Success ~~~");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}

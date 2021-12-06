package com.company.aboutking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet2")
public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MyServlet2() {
		super();
	}

	// 1. http 통신에 request 요청방식을 처리한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("-----------------");
		System.out.println("get 방식으로 사용자가 연결을 요청했습니다.");
		
		//2. 쿼리 스트림 방식을 처리한다.
		//    http://localhost/jspmodel1/MyServlet2?name="홍길동"&age=20
		
		// 키 벨류 입력받은거 처리하기 (request response)
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		System.out.println("name : "+ name);
		System.out.println("age : "+ age);
		
		//실무 값을 통해서 DB에 접근해서   ( insert select(찾기) )
		
		//3. 응답하기
		// MIME (마임) 타입 이해하기
//		response.setContentType("text/html; charset=utf-8");
		
//		response.setContentType("text/plain; charset=utf-8");
		//json 형태
		response.setContentType("application/json; charset=utf-8");
		
		//response - html
		PrintWriter out = response.getWriter(); //출력 스트림
//		out.println("<html>");
//		out.println("<head>");
//		out.println("</head>");
//		out.println("<body>");
//		out.println("<div style='background-color:red;'>");
//		out.println("<h1> 응답을 돌려줍니다. </h1>");
//		out.println("</div>");
//		out.println("</body>");
//		out.println("</html>");
//		out.flush();
		
		//response - json
//		형식 : {"name" : "홍길동", "age" : 30 } 
		out.println("{\"name\" : "+ name +", \"age\" : "+ age +"  }");
		out.flush();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}

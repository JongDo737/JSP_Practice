package com.company.aboutking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



//1. 주소 : localhost:80/jspmodel1/test1
@WebServlet("/test1")	//web.xml 맵핑ㅇ하지 않아도 된다(편함)
public class MyServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//멤버 변수 초기화 과정
	int a; // 멤버변수는 자동으로 초기화됨 ( 0 )
	
	
	//2. 생명주기(life cycle)
	
	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("init");
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
		System.out.println("---------------------");
		System.out.println("service : 스크립트 릿 요소를 만들어 준다.");
		System.out.println("service");
	}
	@Override
	public void destroy() {
		System.out.println("destroy");
		super.destroy();
	}
	
	
	
    public MyServlet1() {
        super();
        System.out.println("생성자");
        
    }
    
    //콜백 메서드랑 비슷함
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("---------------------");
		System.out.println("doGet !");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost !");
	}

}

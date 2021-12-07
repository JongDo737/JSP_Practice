<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
			<% //메서드 안
				/*
					service 메서드에서 만들어주는 요소
				
				*/
				//메서드안에서 메서드를 사용하는것과 마찬가지이다.
				
				/*
				public void intCrement(){
					
				}
				*/
			%>
			
			<%!	//클래스 안
			
				public void intCrement(){
				
				}
				public int intAdd(int a, int b){
					return a + b;
				}
			%>
			<%!
				int a =10;	//멤버변수
			%>
			<%!
				//int a =10;	// 멤버변수 --> 멤버변수 중복 선언
			%>
			<%
				int a=10;	//지역변수
			%>
			
			<%
				//int a = 1001;		// 지역변수 -> 지역변수 중복 선언
			%>
			<!-- 표현식에서 세미콜론 사용하지 않음 -->
			<div style='border:1px solid black; padding:100px; width:50px;'>
				<%=intAdd(a,30)%>
			</div>
			
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	//20개 100개를 넣어야한다면 ,,? 100번 쓸래?
			//--> useBean
	//String id = request.getParameter("id");
%>
	<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBean액션태그 -->
	<!-- 객체 생성 : MemberBean mbean = new MemberBean() 과 똑같음 -->
	<jsp:useBean id="mbean" class="com.company.aboutking.beans.MemberBean">
	
	
		<!-- 한번에 설정할 수 있다. -->
		<jsp:setProperty name="mbean" property="*"/>
		<!-- 필요하다면 하나 씩 셋팅도 가능하다. -->
		<jsp:setProperty name="mbean" property="id"/>
	
	</jsp:useBean>
	
	<h2>당신의 ID : </h2> <jsp:getProperty name="mbean" property="id"/>
	<h2>당신의 password : </h2> <jsp:getProperty name="mbean" property="pass1"/>
	<h2>당신의 email : </h2> <jsp:getProperty name="mbean" property="email"/>
	<h2>당신의 tel : </h2> <jsp:getProperty name="mbean" property="tel"/>
	<h2>당신의 address : </h2> <jsp:getProperty name="mbean" property="address"/>
	
	<!-- 다른 방식도 사용이 가능하다 -->
	당신의 주소는 <%=mbean.getaddress() %> 입니다.


</body>
</html>
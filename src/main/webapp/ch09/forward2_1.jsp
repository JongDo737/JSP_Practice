<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String name = "홍길동";
	
	String bloodType = request.getParameter("bloodType");
	System.out.println("name : "+name);
	System.out.println("bloodType : "+bloodType);
	
	String color = "red";
	String[] colors = {"red","gold", "orange","green"};

%>

	<h1>포워드 태그 응용</h1>
	<!-- a.jsp -->
	<!-- b.jsp -->
	<!-- ab.jsp -->
	<!-- o.jsp -->
	<jsp:forward page='<%=bloodType+".jsp" %>'>
		<jsp:param value='<%=name %>' name="name"/>
		<jsp:param value='<%=colors %>' name="colors"/>
	</jsp:forward>
	
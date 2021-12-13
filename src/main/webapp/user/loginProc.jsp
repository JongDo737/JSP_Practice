<%@page import="beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="userDao" class="dao.UserDao" />

<%
	request.setCharacterEncoding("utf-8");

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	System.out.println(username);
	System.out.println(password);
	
	UserBean resultBean =  userDao.login(username, password);
	
	String msg = "로그인 실패";
	String url = "login.jsp";
	
	if(resultBean != null){
		
		msg = "로그인 성공";
		url = "../main/userInfo.jsp";
		
		session.setAttribute("idKey", resultBean.getId());
		session.setAttribute("username", resultBean.getUsername());
		session.setAttribute("email", resultBean.getEmail());
		session.setAttribute("createDate", resultBean.getCreateDate());
		
	}
	

%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
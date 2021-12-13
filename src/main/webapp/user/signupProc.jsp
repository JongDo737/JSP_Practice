<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 요청 페이지인 form 태그 값들을 자동으로 클래스를 만들어서 셋팅 해주는 역활  -->    
<jsp:useBean id="userBean" class="beans.UserBean">
	<jsp:setProperty property="*" name="userBean"/>
</jsp:useBean>


<!-- UserDao.save(userBean);   -->
<jsp:useBean id="userDao" class="dao.UserDao"/>

<%
	
	request.setCharacterEncoding("utf-8");
	
	int result = userDao.save(userBean); // 1 성공 , -1 실패 
	
	String msg = "회원가입 실패";
	String location = "signup.jsp";
	
	if(result == 1) {
		msg = "회원가입 완료";
		location = "login.jsp";
	}
	
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>


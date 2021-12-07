<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 정보보기</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		// [] 열 타입으로 리턴   getParameterValues
		String[] hobby = request.getParameterValues("hobby");
		String job  =request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
		
		if(!(pass1.equals(pass2))){
	%>
			<!-- 비번1과 비번2가 다를 때 -->
			<script type="text/javascript">
				alert("비밀번호가 일치 하지 않습니다.");
				history.go(-1);
				//입력내용은 그대로 페이지만 뒤로
			</script>
			
	<%
		}
	%>
		
<table width="400" border="1">
			<form action="RequestJoinProc.jsp">
			<table width="500" border="1">
				<tr height="50">
					<td width="150" align="center">아이디 </td>
					<td width="350" align="center"><%= id%>					
					</td>
				</tr>
				
				
				<tr height="50">
					<td width="150" align="center">이메일</td>
					<td width="350" align="center"><%= email%>						
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">전화 번호 </td>
					<td width="350" align="center"><%= tel%>				
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">당신의 관심분야</td>			
					<td width="350" align="center">
					<% 
					for(int i = 0;i<hobby.length;i++){
						out.write(hobby[i] +" ");
					}
					%>			
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">직업은 </td>
					<td width="350" align="center"><%= job%>				
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">전연령은</td>
					<td width="350" align="center"><%= age%>				
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">하고 싶은말</td>
					<td width="350" align="center"><%= info%>				
					</td>
				</tr>

</table>

	
<p/>
클라이언트 IP = <%=request.getRemoteAddr() %><br>
요청정보길이 = <%=request.getContentLength() %><br>
요청정보 인코딩 = <%=request.getCharacterEncoding() %><br>
요청정보 컨텐트타입 = <%=request.getContentType() %><br>
요청정보 프로토콜 = <%=request.getProtocol() %><br>
요청정보 전송방식 = <%=request.getMethod() %><br>
요청 URI = <%=request.getRequestURI() %><br> 
컨텍스트 경로 = <%=request.getContextPath() %><br>
서버이름 = <%=request.getServerName() %><br>
서버포트 = <%=request.getServerPort() %><br>


		
</body>
</html>
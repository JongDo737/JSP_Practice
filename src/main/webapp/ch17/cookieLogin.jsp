<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

	String id = "";
	
	if(cookies != null){
		
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
				break;
			}
		}
	}


%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">쿠키 로그인</h2>
	<form action="cookieLogin_Proc.jsp" method="post">
		<table align="center" bgcolor="#FFFF99" border="1" width="300" >
			<tr >
				<td align="center">아이디</td>
				<td align="center">
					<input type="text" name="id" value="<%=id%>">
				</td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td align="center">
					<input type="password" name="pwd">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="checkbox" value="1" name="save">아이디 저장
				</td>
			</tr>
		
			<tr>
				<td>
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	
	
	
	</form>
</body>
</html>
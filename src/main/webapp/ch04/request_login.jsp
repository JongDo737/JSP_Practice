<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	
	<form action="response_login.jsp">
	
		<table width="400px" border="1">
			<tr height="60">
				<td>아이디</td>
				<td> <input type="text" name="id"></td>
			</tr>
			<tr height="60">
				<td>패스워드</td>
				<td> <input type="password" name="pass"></td>
			</tr>
			<tr height="60">
				<td colspan="2">
					<td><input type="submit" value="전송"></td>
			</tr>
			
		</table>
	
	
	</form>
	
	
</body>
</html>
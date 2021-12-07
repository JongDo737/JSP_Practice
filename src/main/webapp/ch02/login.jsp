<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<h2>로그인 페이지</h2>
		<form action="login_proc.jsp" method="post">
			<table width="400px" border="1">
				<tr height="60px">
					<td align="center" width="150px">아이디</td>
					<td align="left" width="250px"> 
						<input type="text" name="id">
					
					</td>
				</tr>
				<tr height="60">
					<td align="center" width="150px">패스워드</td>
					<td align="left" width="250px">
						<input type="password" name="pass">
					</td>
				</tr>
				<tr height="60">
					<td colspan="2" align="center">
						<input type="submit" value="전송">
					</td>
				</tr>
			
			
			</table>
		
		
		
		</form>
	</section>
</body>
</html>
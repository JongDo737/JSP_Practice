<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>SignUp Here</h1>

	<form class="login" action="signupProc.jsp" method="post">

		<div>
			<label for="username">UserName</label> <input type="text"
				name="username" id="username">
		</div>
		<div>
			<label for="password">Password</label> <input type="password"
				name="password" id="password">
		</div>
		<div>
			<label for="passwordCheck">Password Check</label> <input
				type="password" name="passwordCheck" id="passwordCheck">
		</div>

		<div>
			<label for="email">Email</label> <input type="text"
				name="email" id="email">
		</div>
		<div class="actions">
			<input type="submit" name="login" value="Login">
		</div>
	</form>

</body>
</html>
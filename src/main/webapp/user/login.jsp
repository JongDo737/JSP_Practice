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
	<h1>Login here</h1>

	<form class="login" action="loginProc.jsp" method="post">

		<div>
		<!-- label for 주변 눌렀을때 포커스가 가게 됌 -->
			<label for="username">Username</label> <input type="text"
				name="username" id="username" value="abcd1">
		</div>
		<div>
			<label for="password">Password</label> <input type="password"
				name="password" id="password" value="qweqwe">
		</div>

		<div class="actions">
			<input type="submit" name="login" value="Login"> <a
				href="/forgot">I forgot my password</a>
		</div>
	</form>

	<div class="account">
		<p>
			Create a new account <a href="signup.jsp">here</a>.
		</p>
	</div>

	<div class="contact">
		<p>If you need any other help, please contact the helpdesk.</p>
	</div>
</body>
</html>
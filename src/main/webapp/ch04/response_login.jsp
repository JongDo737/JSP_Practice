<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>여기가 보이나요 ??</h2>
	<%
		request.setCharacterEncoding("utf-8");
		
		//사용자로부터 넘겨온 데이터 받기
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		// DB에 접근해서 사용자의 아이디와 비밀번호가 맞는지 확인해야한다.
		String dbId = "aaaa";
		String dbPass = "1234";
		
		if(dbId.equals(id) && dbPass.equals(pass) ){
			// 아이디와 패스워드가 일치하면 메인 페이지를 보여줘야한다.
			// 내장 객체인 response 이용
			//response.sendRedirect("main.jsp");
			//main 에서 id 값을 받을려면 쿼리스트림방식으로 보내준다.
			response.sendRedirect("main.jsp?id="+id);
		}else{
		
		%>
		<script type="text/javascript">
			alert("아이디와 패스워드가 일치하지 않습니다.");
			history.go(-1);
		</script>
	<%
		
		
			
		}
	
	%>
</body>
</html>
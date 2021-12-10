<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	String save = request.getParameter("save");
	//값이 없으면 null로 뜸

	if (save != null){
		Cookie cookie = new Cookie("id",id);
		
		//쿠키 유효시간설정
		cookie.setMaxAge(60*60*24); // 1일
		
		//응답 헤더에 추가한다.
		response.addCookie(cookie);
		out.write("쿠키생성완료");
	}
	%>
</body>
</html>
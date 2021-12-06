<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<h1>While Example</h1>
			<%
				int number = 10;
				int count = 0;
				
				/* while 문 작성해서 count 값을 브라우저에 출력 0 ~ 9 한줄씩 띄우기*/
				int i=0;
				while(i<number){
					
					i++;
			%>
				<%=count %>
				<br>
			<%		
					count++;
				}
			
			%>
</body>
</html>
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
	%>
	<table width="800" border="1">
		<!-- Top -->
		<tr height="150">
			<td align="center" colspan="2"> 
				<jsp:include page="top.jsp">
					<jsp:param value="내 정보" name="id"/>
				</jsp:include>
			</td>
		</tr>
		
		
		
		<tr height="400">
			<td align="center" width="200"><jsp:include page="left.jsp"/> </td>
			<td align="center" width="600"><jsp:include page="center.jsp"/> </td>
		</tr>
		
		<!-- Bottom -->
		<tr height="100">
			<td align="center" colspan="2">
				<jsp:include page="bottom.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>
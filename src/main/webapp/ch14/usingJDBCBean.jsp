<%@page import="ch14.RegisterBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="regDao" class="ch14.RegisterDao"/>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<h2>Bean을 사용한 데이터베이스 연동 예제</h2>
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>NUM1</strong></td>
			<td><strong>NUM2</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZILCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
		<%
			Vector<RegisterBean> vList = regDao.getRegisterList();
			int counter = vList.size();
			for(int i=0; i< vList.size();i++){
				RegisterBean bean = vList.get(i);
		%>
			<tr>
				<td><%=vList.get(i).getId() %></td>
				<td><%=bean.getPwd() %></td>
				<td><%=bean.getName() %></td>
				<td><%=bean.getNum1() %></td>
				<td><%=bean.getNum2() %></td>
				<td><%=bean.getEmail() %></td>
				<td><%=bean.getPhone() %></td>
				<td><%=bean.getZipcode() %>/<%=bean.getAddress() %></td>
				<td><%=bean.getJob() %></td>
			
			
			</tr>
		
		<%
			}
		%>
		
	</table>
</body>
</html>
<%@page import="ch14.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mbean" class="ch14.MemberDao"/>
<%
	Vector<MemberBean> vList = mbean.getMemberList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<h2>useBean 을 이용한 데이터베이스 연동</h2>
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>MemberID</strong></td>
			<td><strong>MemberName</strong></td>
			<td><strong>MemberAddress</strong></td>
		</tr>
			<%
				for(int i=0; i<vList.size();i++){
					MemberBean bean = vList.get(i);
			%>
		<tr>
			<td><%=vList.get(i).getMemberID() %></td>
			<td><%=bean.getMemberName() %></td>
			<td><%=bean.getMemberAddress() %></td>
		
		
		
		</tr>
		
			<%		
				}
			
			%>
</table>
</body>
</html>
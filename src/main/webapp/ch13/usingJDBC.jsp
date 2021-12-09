
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";

//스크립트릿 영역은 서비스메서드에서 만들어지기때문에 지역변수는 초기화 시켜주는게 좋다.
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String id = "", 
			pwd="",
			name="",
			num1="",
			num2="",
			email="",
			phone="",
			zipcode="",
			address="",
			job="";

int counter = 0;
try{
conn = DriverManager.getConnection(url,"root","asd1234");
stmt = conn.createStatement();
rs = stmt.executeQuery("select * from tblregister");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP에서 데이터베이스 연동</title>
</head>
<body bgcolor="#ffffcc">
	<h2>JSP 스크립트릿에서 데이터베이스 연동 예제</h2>
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
			if(rs != null){
				
				while(rs.next()){
					//while문이 한번돌면 테이블 한 줄이 생김
					id = rs.getString("id");	
					pwd = rs.getString("pwd");	
					name = rs.getString("name");	
					num1 = rs.getString("num1");	
					num2 = rs.getString("num2");	
					email = rs.getString("email");	
					phone = rs.getString("phone");	
					zipcode = rs.getString("zipcode");	
					address = rs.getString("address");	
					job = rs.getString("job");	
					counter++;
				%>
				<tr>
					<td><%=id %></td>
					<td><%=pwd %></td>
					<td><%=name %></td>
					<td><%=num1 %></td>
					<td><%=num2 %></td>
					<td><%=email %></td>
					<td><%=phone %></td>
					<td><%=zipcode %>/<%=address %></td>
					<td><%=job %></td>
				
				</tr>
				
				<%
				} //end of while
				
			} // end of if
		
		%>
	
	</table>
	total records : <%=counter%>
	<br/>
	<%
} catch (SQLException e) {
	e.printStackTrace();
} catch (Exception e) {
	e.printStackTrace();
}finally{
	if(rs != null){
		rs.close();
	}
	if(stmt != null) {
		stmt.close();
	}
	if(conn != null){
		conn.close();
	}
	
	
}
	%>
	
	
	
	
	
	
	
	
	
</body>
</html>
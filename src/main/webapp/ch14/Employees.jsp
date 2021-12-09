<%@page import="ch14.EmployeesBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ebean" class="ch14.EmployeesDao"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>emp_no</td>
			<td>birth_date</td>
			<td>first_name</td>
			<td>last_name</td>
			<td>gender</td>
			<td>hire_date</td>
		</tr>
			<%
				Vector<EmployeesBean> vList = ebean.getEmployees();
				for(int i =0; i<vList.size(); i++){
					EmployeesBean bean = vList.get(i);
			%>
			
		<tr>
			<td><%=bean.getEmp_no() %></td>
			<td><%=bean.getBirth_date() %></td>
			<td><%=bean.getFirst_name() %></td>
			<td><%=bean.getLase_name() %></td>
			<td><%=bean.getGender() %></td>
			<td><%=bean.getHire_date() %></td>
			</tr>
			<%	
				}
			
			%>
		
		
		
		
		
	
	
	</table>
</body>
</html>
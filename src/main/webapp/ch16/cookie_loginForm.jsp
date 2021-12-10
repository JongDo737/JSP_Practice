<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//쿠키 확인하는 녀석
	Cookie[] cookies = request.getCookies();
	String id = "";
	
	// 쿠키값이 없을 수도 있기 때문에 null처리를 해준다.
	
	if(cookies != null){
		for(int i =0;i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
				break;
			}
		}
	}

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center" >쿠키 로그인</h2>
	<form action="cookie_loginProc.jsp" method="post">
	<table width="300" border="1" align="center" bgcolor="#FFFF99" >
		<tr bordercolor="#ffff66">
			<td colspan="2" align="center" ><b>LOG IN</b></td>
		
		
		</tr>
		<tr bordercolor="#ffff66">
			<td width="47%" align="center" >ID</td>
			<td width="53%" align="center" ><input  name="id" value="<%=id%>"> </td>
		</tr>
		<tr bordercolor="#ffff66">
			<td align="center" >PWD</td>
			<td  align="center" ><input  name="pwd"> </td>
		</tr>
		<tr height="50">
			<td colspan="2" align="center">
				<input type="checkbox" name="save" value="1">아이디 저장
			</td>
		
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value = "login">
				<input type="reset" value = "reset">
			</td>
		</tr>
		
	</table>
	
	</form>
</body>
</html>
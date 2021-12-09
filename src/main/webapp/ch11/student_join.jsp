<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생정보 기입</h2>
	<form action="student_join_proc.jsp" method="post">
		<table width="600" border="1">
			<tr>
				<td align="center" height="60"> 학번</td>
				<td width="400"> <input type="text" name="num" placeholder="학번을 입력해주세요" value="201945810"></td>
			</tr>
			<tr>
				<td align="center" height="60">이름</td>
				<td> <input type="text" name="name" value="신종민"> </td>
			</tr>
			<tr>
				<td align="center" height="60">이메일</td>
				<td> <input type="email" name="email" value="jongmin373@gmail.com"> </td>
			</tr>
			<tr>
				<td align="center" height="60">전화번호</td>	
				<td> <input type="text" name="tel" value="010-3333-4444"> </td>	
			</tr>
			<tr>
				<td align="center" height="60">주소</td>
				<td> <input type="text" name="address" value="부산광역시"> </td>
			</tr>
			<tr>
				<td align="right" class="click" style="padding:10px;">
					<input type="submit" value="회원가입"  style="marine:10px; background-color:red;"> 
					<input type="reset" value="취소" style="marine:10px; background-color:red;">
					
				</td>
			</tr>
		
		
		
		</table>
	
	
	
	
	
	</form>
</body>
</html>
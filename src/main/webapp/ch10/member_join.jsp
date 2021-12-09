<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		background-color : gold;
	}
	input{
		width: 98%;
		height : 60px;
		font-size: 20px;
		
	}
	.click{
		display: flex;
		gap: 30px;
	}

</style>
</head>
<body>
	<h2>회원가입</h2>
	<form action="member_join_proc.jsp" method="post">
		<table width="600" border="1">
			<tr>
				<td align="center" height="60"> 아이디</td>
				<td width="400"> <input type="text" name="id" placeholder="id를 넣으세요" value="jongmin33"></td>
			</tr>
			<tr>
				<td align="center" height="60">패스워드</td>
				<td> <input type="password" name="pass1" placeholder="비밀번호는 숫자와 영어만 넣어주세요" value="asd1234"> </td>
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
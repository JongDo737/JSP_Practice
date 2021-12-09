<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<table width="500" align="center" cellspacing="0" cellpadding="5">
		<tr>
			<td align="center" valign="middle" bgcolor="#DBBDBD">
				<table border="1" cellspacing="0" cellpadding="2" align="center">
					<form name="regForm" method="post" action="memberProc.jsp">
						<tr align="center" bgcolor="#00ADED">
							<td colspan="3">
								<font color="#FFFFFF"><b>회원 가입</b></font>
							</td>
						</tr>
						<tr>
							<td width="100">아이디</td>
							<td width="200"><input name="id" size="15" value="questzz"></td>
							<td width="200">아이디를 적어 주세요.</td>
						</tr>
						<tr>
							<td>패스워드</td>
							<td><input type="password" name="pwd" size="15" value="asd1234"></td>
							<td>패스워드를 적어주세요.</td>
						</tr>
						<tr>
							<td>패스워드 확인</td>
							<td><input type="password" name="repwd" size="15" value="asd1234"></td>
							<td>패스워드를 확인합니다.</td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input name="name" size="15" value="김철수"></td>
							<td>고객실명을 적어주세요.</td>
						</tr>
						<tr>
							<td>생년월일</td>
							<td><input name="birthday" size="27" value="1990-08-01"></td>
							<td>생년월일을 적어주세요.</td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input name="email" size="20" value="abc@naver.com"></td>
							<td>이메일을 적어주세요.</td>
						</tr>
						<tr>	<!-- inputCheck() 자바 스크립트함수를 써서 패스워드 확인 후 페이지 넘김 -->
							<td colspan="3" align="center"><input type="button" value="회원가입" onclick="inputCheck()"> &nbsp;
								 <input type="reset" value="다시쓰기">
							 </td>
						</tr>
					</form>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
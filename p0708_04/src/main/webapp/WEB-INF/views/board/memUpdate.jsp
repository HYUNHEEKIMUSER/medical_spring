<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 수정</title>
	</head>
	<body>
		<h2>회원정보 수정</h2>
		<form action="doMember" name = "frm" method ="post">
			<label>ID</label>
			<input type = "text" name ="bid" value = "${id }"><br>
			<label>PW</label>
			<input type = "text" name ="bpw" value = "${pw }"><br>
			<label>name</label>
			<input type = "text" name ="bname"><br>
			<label>phone</label>
			<input type = "text" name ="bphone"><br>
			<label>gender</label>
			<input type = "radio" name ="bgender" value = "male" id ="male">
			<label for="male">남성</label>
			<input type = "radio" name ="bgender" value = "female" id ="female">
			<label for="female">여성</label>
			<br>
			<input type = "submit" value ="전송">
		</form>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>멤버</title>
	</head>
	<body>
		<h2>멤버 정보</h2>
		<form action="doMember" name = "frm" method ="post">
			<label>ID</label>
			<input type = "text" name ="bid" value = "id" id ="id"><br>
			<label>PW</label>
			<input type = "text" name ="bpw" value = "pw" id ="pw"><br>
			<label>name</label>
			<input type = "text" name ="bname" value = "name" id ="name"><br>
			<label>phone</label>
			<input type = "text" name ="bphone" value = "phone" id ="phone"><br>
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
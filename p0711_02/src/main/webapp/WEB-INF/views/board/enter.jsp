<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
	</head>
	<body>
		<h2>회원가입</h2>
		
		<label>아이디</label>
		<input type="text" name="id"><br>
		<label>패스워드</label>
		<input type = "password" name = "pw"><br>
		
		<form action="/index" name="doEnter" method="post">
		<input type="submit" value="가입완료">
	</body>
</html>
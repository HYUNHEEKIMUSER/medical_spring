<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form2</title>
	</head>
	<body>
		<h2>게시글</h2>
		<form action ="doForm2" name = "frm" method ="post">
			<label>번호</label>
			<input type = "text" name = "bno"><br>
			<label>제목</label>
			<input type = "text" name = "btitle"><br>
			<input type = "submit" value = "전송">
		</form>
	</body>
</html>
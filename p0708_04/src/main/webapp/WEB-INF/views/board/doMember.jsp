<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form에서 넘어온 데이터</title>
		<style>
			table,th,td{border: 1px solid black; border-collapse: collapse;}
			th,td{width:200px;}
		</style>
	</head>
	<body>
	<form action="memUpdate" method ="post">
		<input type ="hidden" name = "id" value ="${id }">
		<input type ="hidden" name = "pw" value ="${pw }">
		<input type ="hidden" name = "name" value ="${name }">
		<input type ="hidden" name = "phone" value ="${phone }">
		<input type ="hidden" name = "gender" value ="${gender }">
		<h2>form에서 넘어온 데이터</h2>
		<table>
			<tr>
				<th>목록</th>
				<th>정보</th>
			</tr>
			<tr>
				<td>id(id)</td>
				<td>${bid}</td>				
			</tr>
			<tr>
				<td>pw(pw)</td>
				<td>${bpw}</td>		
			</tr>
			<tr>
				<td>name(name)</td>
				<td>${bname}</td>		
			</tr>
			<tr>
				<td>phone(phone)</td>
				<td>${bphone}</td>		
			</tr>
			<tr>
				<td>gender(gender)</td>
				<td>${bgender}</td>		
			</tr>
		</table>
		<input type = "submit" value = "수정">
		</form>
	</body>
</html>






















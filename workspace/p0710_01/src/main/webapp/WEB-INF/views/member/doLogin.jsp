<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인완료</title>
		<style>
			table,th,td{border: 1px solid black; border-collapse: collapse;}
			th,td{width:200px; height: 40px;}
		</style>
		<script>
			if('${check}'==0){
				alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인하세요");
				location.href ="login";
			}
		</script>
	</head>
	<body>
		<h2>로그인 정보</h2>
		<table>
			<tr>
				<th>제목</th>
				<th>내용</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${id }</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>${pw }</td>
			</tr>
			<tr>
				<td>페이지번호</td>
				<td>${pno }</td>
			</tr>
			
		</table>
	</body>
</html>










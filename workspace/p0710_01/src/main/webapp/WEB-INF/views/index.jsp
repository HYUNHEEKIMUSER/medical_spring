<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 	./ or 아무것도 없는 것:  현재위치

		/ 모든 폴더를 앞으로 당겨 route folder에서 실행 -->
		
<!-- static 폴더에 html css js images 저장 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<h2>메인페이지</h2>
		<ul>
			<li><a href ="member/login">로그인</a></li>  
			<li><a href ="form">회원가입</a></li>
			<li><a href = "/logout">로그아웃</a></li> 
			<li><a href="boardList?bno=10">게시판</a></li>
			<li><a href="boardList2/5">게시판2</a></li>
			<li>회원정보</li>
		</ul>
		
	</body>
</html>
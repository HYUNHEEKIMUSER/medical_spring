<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시판</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/notice_list.css">
</head>
<body>
<section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="/search" name="search" method="post">
        <select name="category" id="category">
          <option value="0">전체</option>
          <option value="title">제목</option>
          <option value="content">내용</option>
        </select>

        <div class="title">
          <input type="text" size="16">
        </div>
  
        <button type="submit"><i class="fas fa-search"></i></button>
      </form>
    </div>

    <table>
      <colgroup>
        <col width="15%">
        <col width="15%">
        <col width="15%">
        <col width="15%">
        <col width="15%">
        <col width="10%">
        <col width="15%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>사번</th>
        <th>사원명</th>
        <th>입사일</th>
        <th>월급</th>
        <th>부서번호</th>
        <th>부서번호</th>
        <th>상급부서</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach items="${list}" var = "empDepDto">
      <tr>
        <td>${empDepDto.department_id}</td>
        <td class="table-title">${empDepDto.department_name}</td>
        <td>${empDepDto.parent_id}</td>
        <td>${empDepDto.manager_id}</td>
        <td>${empDepDto.create_date}</td>
        <td>${empDepDto.update_date}</td>
      </tr>
      </c:forEach>
    </table>

    <ul class="page-num">
      <li class="first"></li>
      <li class="prev"></li>
      <li class="num"><div>1</div></li>
      <li class="next"></li>
      <li class="last"></li>
    </ul>

    <a href="write_view.jsp"><div class="write">쓰기</div></a>
  </section>

</body>
</html>
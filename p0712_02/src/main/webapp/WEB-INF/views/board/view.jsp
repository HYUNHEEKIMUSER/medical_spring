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
  <title>뷰페이지</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/read.css">
  <script>
    function deleteBtn(bno){
    	//alert(bno);
    	if(confirm("게시글을 삭제하시겠습니까?")){
    		location.href="/board/delete?bno="+bno;
    	}
    }
    
  </script>
</head>
<body>
<section>
    <h1>NOTICE</h1>

    <table>
      <colgroup>
        <col width="80%">
        <col width="10%">
        <col width="10%">
        
      </colgroup>
      <tr>
        <th colspan="3">제목</th>
      </tr>
      <tr>
        <td colspan="3"><strong>${map.boardDto.btitle }</strong></td>
      </tr>
      <tr>
        <td>${map.boardDto.id }</td>
        <td>조회수</td>
        <td>${map.boardDto.bhit }</td>
      </tr>
      <tr>
        <td colspan="3" class="article">${map.boardDto.bcontent }</td>
      </tr>
      
      <tr>
        <td colspan="3"><strong>파일첨부</strong></td>
      </tr>
      <tr>
        <c:if test="${map.boardDto.bfile != null}">
        	<td colspan="3" class="article">
        	  <img style="width:50%;" src="/upload/${map.boardDto.bfile }">
        	</td>
        </c:if>
        <c:if test="${map.boardDto.bfile == null}">
        	<td colspan="3" class="article">첨부파일 없음</td>
        </c:if>
      </tr>
      
      <tr>
        <td colspan="3"><strong>다음글</strong> <span class="separator">|</span>
        	<c:if test="${map.prevDto.bno != null}">
        	<a href="/board/view?bno=${map.prevDto.bno }&page=${page }">[게시글] ${map.prevDto.btitle }</a>
        	</c:if>
        	<c:if test="${map.prevDto.bno == null}">
        	다음글이 없습니다
        	</c:if>
        	</td>
      </tr>
      <tr>
        <td colspan="3"><strong>이전글</strong> <span class="separator">|</span> 
        	<c:if test="${map.nextDto.bno != null}">
        	<a href="/board/view?bno=${map.nextDto.bno }&page=${page }">[게시글] ${map.nextDto.btitle }</a>
        	</c:if>
        	<c:if test="${map.nextDto.bno == null}">
        	이전글이 없습니다
        	</c:if>
        </td>
      </tr>
    </table>

    <a href="/board/list?page=${page}&category=${category}&searchWord=${searchWord}"><div class="list">목록</div></a>
    <div class="list" onclick="deleteBtn(${map.boardDto.bno})">삭제</div>
    <a href="/board/update?bno=${map.boardDto.bno}"><div class="list">수정</div></a>
    <a href="/board/reply?bno=${map.boardDto.bno }"><div class="list">답변달기</div></a>
  </section>
</body>
</html>
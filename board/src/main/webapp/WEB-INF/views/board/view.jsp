<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body>
	<div id="nav">
	 <%@ include file="../include/nav.jsp" %>
	</div>
<form method="post">

<input type="radio" name="eduCd" value="H" 
<c:if test="${view.eduCd eq 'H'}">checked</c:if>> 고등학생
<input type="radio" name="eduCd" value="C" 
<c:if test="${view.eduCd eq 'C'}">checked</c:if>> 대학생 
<input type="radio" name="eduCd" value="E" 
<c:if test="${view.eduCd eq 'E'}">checked</c:if>> 대학원생
<br />


<label>제목</label>
<input type="text" name="title" value="${view.title}"/><br />

<label>작성자</label>
<input type="text" name="writer" value="${view.writer}"/><br />

<label>내용</label>
<textarea cols="50" rows="5" name="content">${view.content}</textarea><br />


<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
<a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
<a href="/board/list">돌아가기</a>
<%-- <a href="/board/modify?bno=${view.bno}">게시물 수정</a>
<a href="/board/delete?bno=${view.bno}">게시물 삭제</a> --%>

<!-- <button onclick="location.href='/board/write'">돌아가기</button> -->
<!--<button type="submit">작성</button>-->

</form>

</body>
</html>
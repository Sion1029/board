<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

<input type="radio" name="eduCd" <c:if test="${view.eduCd eq 'H'}"> checked </c:if>> 고등학생
<input type="radio" name="eduCd" <c:if test="${view.eduCd eq 'C'}"> checked </c:if>> 대학생 
<input type="radio" name="eduCd" <c:if test="${view.eduCd eq 'E'}"> checked </c:if>> 대학원생 <br />



<input type="checkbox" name="sportsCd" <c:if test = "${fn:contains(view.sportsCd, 'S')}"> checked </c:if>> 축구
<input type="checkbox" name="sportsCd" <c:if test = "${fn:contains(view.sportsCd, 'B')}"> checked </c:if>> 농구
<input type="checkbox" name="sportsCd" <c:if test = "${fn:contains(view.sportsCd, 'V')}"> checked </c:if>> 배구

<%-- <input type="checkbox" name="sportsCd" <c:if test="${view.sportsCd eq 'S'}"> checked </c:if>> 축구 --%>
<%-- <input type="checkbox" name="sportsCd" <c:if test="${view.sportsCd eq 'B'}"> checked </c:if>> 농구 --%>
<%-- <input type="checkbox" name="sportsCd" <c:if test="${view.sportsCd eq 'V'}"> checked </c:if>> 배구 --%>

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
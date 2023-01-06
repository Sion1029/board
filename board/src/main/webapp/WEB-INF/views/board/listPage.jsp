<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<!-- jquey & Ajax 선택삭제 -->
<!-- https://won-percent.tistory.com/48  -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;
			
			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for (var i=0; i<chk_listArr.length; i++) {
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='Rowcheck']").click(function(){
				if($("input[name=RowCheck]:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;					
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		function deleteValue(){
			var url = "delete";
			var valueArr = new Array();
			var list = $("input[name='RowCheck']");
			for(var i = 0; i < list.length; i++){
				if(list[i].checked){
					valueArr.push(list[i].value);
				}
			}
			if (valueArr.length ==0){
				alert("선택된 글이 없습니다.");
			}
			else{
				var chk = confirm("정말 삭제하시겠습니까?");
				$.ajax({
					url : url,
					type : 'POST',
					traditional : true,
					data : {
						valueArr : valueArr
					},
					success: function(jdata){
						if(jdata = 1) {
							alert("삭제 성공");
							location.replace("list")
						}
						else{
							alert("삭제 실패");
						}
					}
				});
			}
		}
	</script>
	
	<style>
	  .atag {
			position : relative;
			text-align: right;
	  }
	  table {
	    width: 400px;
	    height: 200px;
	    margin-right: auto;
	    border: 1px solid #444444;
	    border-collapse: collapse;
	  }
	  th, td {
	    border: 1px solid #444444;
	    padding: 10px;
	    text-align: center;
	  }
	  
	</style>
	
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
	<div>
		<div class="atag">
			<p>
				<button onclick="location.href='/board/write'">글 작성</button>
				<input type="button" value="선택삭제" onclick="deleteValue();">
			</p>
		</div>
	</div>


	<!-- 메뉴 인클루드 -->
	<div id="nav">
		<%@ include file="../include/nav.jsp" %>
	</div>

	<div class="table">
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col"><input id="allCheck" type="checkbox" name="allCheck"/></th>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		
		<tbody>
	
			<c:forEach items="${list}" var="list">
				<tr>
					<td class="text_ct"><input name="RowCheck" type="checkbox" value="${list.bno}"/></td>
					<td>${list.bno}</td>
					<td>
						<a href="/board/view?bno=${list.bno}">${list.title}</a>
					</td>
					<td>
						<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />
					</td>
					<td>${list.writer}</td>
					<td>${list.viewCnt}</td>
				</tr>
			</c:forEach>
		</tbody>	
	</table>
	
	<div>
	 <c:forEach begin="1" end="${pageNum}" var="num">
	    <span>
	     <a href="/board/listPage?num=${num}">${num}</a>
	    </span>
	 </c:forEach>
	</div>
	
	</div>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute( "newLine", "\n" );
%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite5/assets/css/board.css" rel="stylesheet" type="text/css">


<script type="text/javascript" src="/mysite5/assets/js/jquery/jquery-1.9.0.js"></script>


</head>
<body>
	<div id="container">
		<c:import url='/WEB-INF/views/include/header.jsp'/>
		<div id="content">
			<div id="board" class="board-form">
				<table class="tbl-ex">
					<tr>
						<th colspan="2">글보기</th>
					</tr>
					<tr>
						<td class="label">제목</td>
						<td>${vo.title }</td>
					</tr>
					
					<tr>
						<td class="label">첨부 파일:</td>
						<td id="attachFile" data-fno="${fileVo.fno }" >${fileVo.orgName }</td>
					</tr>
					
					<tr>
						<td class="label">내용</td>
						<td>
							<div class="view-content">
						${vo.content }
							</div>
						</td>
					</tr>
				</table>
				<div class="bottom">
				<a href="#" class="btn btn-sm btn-danger">수정하기 <span class="glyphicon glyphicon-ok"></span></a>
					<a href="modifyform?no=${vo.no }">글수정</a>
					<a href="#" class="btn btn-sm btn-danger">삭제하기 <span class="glyphicon glyphicon-trash"></span></a>
				</div>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/navi.jsp'/>
		<c:import url='/WEB-INF/views/include/footer.jsp'/>
	</div>
</body>

</html>

<script>
/* 첨부파일 다운로드  */
$("#attachFile").on("click",function(event){
	var fno = $(this).data("fno");
	var url = "download?fno=" + fno;
	window.open(url);
	consolg.log(fno);
	
});
</script>
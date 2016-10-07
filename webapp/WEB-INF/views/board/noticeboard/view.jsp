<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>

<title>view</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">



<!-- Custom CSS -->
<link href="/custombeauty/bootstrap/css/business-casual.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css" rel="stylesheet" integrity="sha384-+ENW/yibaokMnme+vBLnHMphUYxHs34h9lpdbSLuAwGkOKFRl4C34WkjazBtb7eT" crossorigin="anonymous">
	
<link href="/custombeauty/beautyline/css/include.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="/custombeauty/bootstrap/css/font-awesome.min.css" media="screen" title="no title">
<!-- Custom style -->
<link rel="stylesheet" href="/custombeauty/bootstrap/css/style.css" media="screen" title="no title">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/custombeauty/bootstrap/js/jquery.js"></script>
<style type="text/css">

#bdhr {
	width: 100%;
	background-color: #3E3F3A;
	height: 1px;
	margin-top: 3px;
	margin-bottom: 3px;  
}
#contents {
	padding: 20px 5px;
	
	
}
#title table{
	width: 100%;
}
#titletxt {
	font-weight: bolder;
	font-size: 15pt;
}
#date {
	color: #95A5A6;	
	text-align: right;
}
#bottombtns {
	padding-top: 10px;
}
#userNametxt{
	font-weight: bold;
}
</style>

</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">
		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<div class="page-header"></div>
					
					<div class="col-md-2"></div>
					<div class="col-md-9" id="title">
					
					  <table>
                		<tbody>
	                		<tr>                 
		                	<td id="titletxt">
		                        <span>${notiBdVo.title }</span>
		                    </td>
		                    <td id="date">
		                        <span>${notiBdVo.regDate }</span>
		                    </td>
		                    <td>
		                    
		                    </td>
	                        </tr>
	                    </tbody>
                      </table>

					
						<div id="bdhr"></div>
						
						<div id="userNametxt">관리자</div>
						<div id="contents">
							${notiBdVo.content }
						</div>
						
						
						
						<div id="bdhr"></div>						
					</div>
					
				
				<div class="col-md-2"></div>
				<div class="col-md-9 text-right" id="bottombtns">
				
          		<c:if test="${authUser.isAdmin eq 'a'}">
					<a href="deleteform?no=${notiBdVo.no }" class="btn btn-sm btn-danger">삭제 <span class="glyphicon glyphicon-trash"></span></a>
					<a href="modify" class="btn btn-sm btn-success">글 수정 <span class="glyphicon glyphicon-pencil"></span></a>
				</c:if>
				<a href="board" class="btn btn-sm btn-primary">목록 <span class="glyphicon glyphicon-th-list"></span></a>
				
				</div>
				
			</div>
		</div>
					
		</div>
	</div>			

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>

<script>
$(document).ready(function(){


});
</script>



</html>
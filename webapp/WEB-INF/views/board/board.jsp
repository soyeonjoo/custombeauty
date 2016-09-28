
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>

   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
    rel="stylesheet" type="text/css">
 




<title>noticeBoard</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<!-- Bootstrap Core CSS -->
<link href="/custombeauty/bootstrap/css/bootstrap.min.css" 
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/custombeauty/bootstrap/css/business-casual.css"
	rel="stylesheet">
<link href="/custombeauty/beautyline/css/include.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet"
	href="/custombeauty/bootstrap/css/font-awesome.min.css" media="screen"
	title="no title">
<!-- Custom style -->
<link rel="stylesheet" href="/custombeauty/bootstrap/css/style.css"
	media="screen" title="no title">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
	rel="stylesheet" type="text/css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="/custombeauty/bootstrap/js/jquery.js"></script>
						
					<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
	<!-- 
<style type="text/css">
.col-sm-3, .col-sm-2 {
	padding-right: 0px;
}

#btn {
	padding-left: 0px;
} 
</style>-->
<script>



</script>




</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />


					
					
					
					
					

<div class="container">
    <div class="row">
			<div class="box">
        
       <div class="col-lg-12 ">
					<div class="page-header">
						<hr>
						<h1 class="text-center text-center">
							<strong>공지사항</strong>
						</h1>
						<hr>
					</div>
					<a href="#" class="btn btn-lg btn-danger "><span class="glyphicon glyphicon-pencil"></span> </a>
	         <table class="table table-bordered table-hover table-responsive">
              <tbody>
              <c:set var='totalCount' value='${fn:length(listUser) }' />
						<c:forEach items="${listUser }" var="userinfoVo"
							varStatus="status">
							<tr>
								<td>${totalCount - status.index }</td>
								<td>${userinfoVo.no}</td>
								<td>${userinfoVo.name}</td>
								<td>${userinfoVo.phone}</td>
								<td>${userinfoVo.id}</td>
								<td>${userinfoVo.email}</td>
								<td>${userinfoVo.address}</td>
								<td>${userinfoVo.is_admin}</td>

								<td>
									<%-- <input type="hidden" name="no"
									value="${userinfoVo.no }" /> <a class="btn btn-default"
									href="couponview?no=${userinfoVo.no }" role="button">조회</a> --%>

									<!-- 조회 클릭 --> <!-- Trigger the modal with a button --> <input
									type="hidden" name="no" value="${CouponviewVo.userNo }" /> <a
									class="btn btn-default" href="" id="couponview"
									data-target="#myModal2" type="button" data-toggle="modal"
									role="button">조회</a>
								</td>

								<td><input type="hidden" name="no"
									value="${userinfoVo.no }" /> <a class="btn btn-default"
									href="modifyuser?no=${userinfoVo.no }" role="button">수정</a></td>
								<td><form method="post" action="delete">
										<input type="hidden" name="no" value="${userinfoVo.no }" /> <input
											type="submit" value="삭제">
										<!-- <a class="btn btn-default" href = "javascript:del()">삭제</a> -->
									</form></td>
							</tr>
						</c:forEach>
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                  <td>11</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                  <td>11</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                  <td>11</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                  <td>11</td>
                </tr>
             
              </tbody>
              <thead>
                <tr>
                  <th class="danger text-center">no</th>
                  <th class="danger">제목</th>
                  <th class="danger">작성자</th>
                  <th class="danger">등록일</th>
                  <th class="danger">조회수</th>
                </tr>
              </thead>
            </table>
       <a href="#" class="btn btn-sm btn-danger">글쓰기 <span class="glyphicon glyphicon-pencil"></span></a>
      
   <!--  페이징 -->
    <div class="section text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <ul class="pagination pagination-sm">
              <li class="">
                <a href="#">Prev</a>
              </li>
              <li class="active">
                <a href="#">1</a>
              </li>
              <li>
                <a href="#">2</a>
              </li>
              <li>
                <a href="#">3</a>
              </li>
              <li>
                <a href="#">4</a>
              </li>
              <li>
                <a href="#">5</a>
              </li>
              <li>
                <a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
   
					
			<a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-search"></span> </a>		
				 </div>	
	  </div>
      </div>				
			   </div>		
					
					


 <!--   <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th><input type="checkbox" id="checkall" /></th>
                   <th>Sales ID</th>
                    <th>Name</th>
                     <th>Email</th>
                     <th>Designation</th>
                     <th>Mobile Numberl</th>
                      
                      
                       <th>Delete</th>
                   </thead>
    <tbody>
    
    <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
    
   
    
   
    
    </tbody>
        
</table>

<div class="clearfix"></div>



<ul class="pagination pull-center">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ul>
                
            </div>
    -->         




  













<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
					
					
					
					
</div>



	<c:import url="/WEB-INF/views/include/footer.jsp" />








	
	<button id="qmyBtn">Click Here</button>
</body>








<script>
	$(function() {
	
</script>



</html>
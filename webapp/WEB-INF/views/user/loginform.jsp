<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>



<title>loginform</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="/custombeauty/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- font awesome -->
    <link rel="stylesheet" href="/custombeauty/bootstrap/css/font-awesome.min.css" media="screen" title="no title" >
   
    <!-- Custom CSS -->
    <link href="/custombeauty/bootstrap/css/business-casual.css" rel="stylesheet">
   <link href="/custombeauty/beautyline/css/include.css" rel="stylesheet">
    <!-- Custom style -->
    <link rel="stylesheet" href="/custombeauty/bootstrap/css/style.css" media="screen" title="no title" >
   
  <!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">




<style type="text/css">
.block-label {
   width: 100px;
}

.btn btn-danger {
   margin: 50px;
}

#loginbt {
   margin-top: 10px;
}
</style>
<!-- modal script -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 </head>



<body>

   <c:import url="/WEB-INF/views/include/header.jsp" />
<div class="container">
      <div class="row">
         <div class="box">
            <div class="col-lg-12">
            
            
             <div class="page-header">
               <hr>
               <h1 class="text-center">
                  <strong>LOGIN</strong>
               </h1>
               <hr>
            </div>
            
            <form class="form-horizontal"  name="loginform" method="post" action="/beautyline/user/login">
   
   
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="id">ID</label>
                   <div class="col-sm-6">
                  <input class="form-control" id="id" name="id" type="text" value="" placeholder="YOUR ID">
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label" for="password">PASSWORD</label>
                   <div class="col-sm-6">
                  <input class="form-control" id="password" name="password" type="text" value="" placeholder="PASSWORD">
                  </div>
                </div>
            
            <!--     <div class="form-group">
                  <label class="col-sm-3 control-label" for="id">ID</label>
                   <div class="col-sm-6">
                  <input class="form-control" id="id" name="id" type="text" value="" placeholder="YOUR ID">
                  </div>
                </div> -->      
               <c:if test='${param.r == "fail"}'>
                  <p>로그인이 실패 했습니다.</p>
               </c:if>
           
           <!-- 아이디 비밀번호 찾기 클릭 -->
<div class="col-lg-12 text-center">
  <!-- Trigger the modal with a button -->
<!--   <button type="button" class="btn btn-info btn-lg" id="myBtn">아이디찾기</button>  -->
 <a href="" id="idfind" data-target="#myModal3" type="button"  data-toggle="modal">아이디찾기</a>/
 <a href="">비밀번호 찾기</a>
 </div>
 
           
           
           
               
               <div id="loginbt" class="col-lg-12 text-center">
                  <input class="btn btn-danger" type="submit" value="LOGIN">
               </div>
      <!--       
      <div class="col-lg-12 text-center">
                  <label class="block-label">password</label>
                  <input name="password" type="password" value="" placeholder="PASSWORD">
               </div>
                
      
         
               </div> -->
               
               

 
 
 
  <!-- Modal -->
  <div class="modal fade" id="myModal3" role="dialog" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
     
      <div class="modal-content">
      <form class="form-horizontal" id="idfind-form" name="idFindForm" method="post" action="/beautyline/user/idfind">
    
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">아이디 찾기</h4>
        </div>
       
       
        <div class="modal-body"><!-- 이름과 이메일로 찾기 -->
               
         
          
       <!-- 이름 -->
       <div class="form-group">
          <label class="col-sm-4 control-label" for="name">이름</label>
        <div class="col-sm-8">
          <input class="form-control"  name="name" id="name" type="text" placeholder="이름" >
        </div>
        </div>
          
          <div class="form-group">
          <label class="col-sm-4 control-label" for="email">이메일</label>
        <div class="col-sm-8">
          <input class="form-control" name="email" id="email" type="text" placeholder="이메일">
        </div>
        </div>
       
      
          
       
          
          
        </div>
        <div class="modal-footer">
        <div id="fintdt" class="col-lg-12 text-center">
               <button class="btn btn-default" type="submit">찾기</button>
               </div>
       <!--  <button type="button" class="btn btn-default" data-dismiss="modal">찾기</button> -->  
        </div>
     </form>
      </div>
       
    </div>
  </div>
  

                  
            </form>
         </div>
      </div>
      <!-- <div class="clearfix"></div> -->
   </div>
   </div>

   <!-- footer -->
   <c:import url="/WEB-INF/views/include/footer.jsp" />


   <script>
$(document).ready(function(){
    $("#idfind").click(function(){
    	
        $("#myModal").modal();
        
    });
});
</script>
</body>
</html>





<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>

    <title>joinform</title>

 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


     <!-- Bootstrap Core CSS -->
	<link href="/custombeauty/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="/custombeauty/bootstrap/css/business-casual.css" rel="stylesheet">
	<link href="/custombeauty/beautyline/css/include.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="/custombeauty/bootstrap/css/font-awesome.min.css" media="screen" title="no title" >
    <!-- Custom style -->
    <link rel="stylesheet" href="/custombeauty/bootstrap/css/style.css" media="screen" title="no title" >
	
  <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script type="text/javascript" src="/custombeauty/bootstrap/js/jquery.js"></script>
 <style type="text/css">
.col-sm-3,
.col-sm-2
 {

	padding-right: 0px;
	
}
#btn {
	padding-left: 0px;
}

</style> 
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
    
     
  /*   function chkPwd(str){

		 var reg_pwd = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;

		 if(!reg_pwd.test(str)){

		  return false;

		 }

		 return true;

		}

	 	if(!chkPwd( $.trim($('#inputPassword').val()))){ 

		 alert('비밀번호를 확인하세요.₩n(영문,숫자를 혼합하여 6~20자 이내)');    

		 $('#inputPassword').val('');

		 $('#inputPassword').focus(); return false;

		 }  */ 


    
</script>




</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp" />
 
    <div class="container">
      <div class="row">
         <div class="box">    
        	<div class="col-lg-12">
             <div class="page-header">
               <hr>
               <h1 class="text-center text-center">
                  <strong>회원가입</strong>
               </h1>
               <hr>
            </div>
        
        
        
        <!-- ////////////////////////회원가입 폼시작///////////////////////////////////// -->
        <form class="form-horizontal" id="join-form" name="joinform" method="post" action="/custombeauty/user/join">
        
        <!-- 이름 -->
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputName">이름*</label>
        <div class="col-sm-3">
          <input class="form-control" id="inputName" name="name" type="text" placeholder="이름">
        </div>
        </div><br>
           
        <!-- 아이디 -->
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputId">아이디*</label>
         <div class="col-sm-3">
          <input class="form-control" id="inputId" name="id" type="text" placeholder="아이디" >
         </div>
         <span class="input-group-btn">
          <button class="btn btn-success" id="checkId" type="button">중복 확인<i class="fa fa-edit spaceLeft"></i></button>
         </span>
        </div><br>
        
        <!-- 비밀번호 -->
        <div class="form-group">
         <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
         <div class="col-sm-3">
          <input class="form-control" id="inputPassword" name="password" type="password" placeholder="비밀번호">
         </div>
         <div class="col-sm-3">
       	  <h11 class="help-block" id="checkPw">영문, 숫자를 혼합하여 6~20자 이내</h11>
         </div>
        </div>
        
        <!-- 비밀번호확인 -->
         <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
         <div class="col-sm-3">
          <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
           </div>
           <div class="col-sm-3">
           <h11 class="help-block" id="oneMore">비밀번호를 한번 더 입력해주세요.</h11>
         </div>
         </div><br>
         
         
        <!-- 이메일 -->
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputEmail">이메일*</label>
          <div class="col-sm-2">
            <input class="form-control" name="email1" id="inputEmail1" type="text">
            </div>
             <div class="col-sm-2">
          	<input class="form-control" name="email2" id="inputEmail2" type="text" >
          	</div> 
          	<div class="col-sm-2">
          	<select class="form-control" name="email_select" id="email_select" > 
  			<option value="" selected>선택하세요</option>
   			<option value="naver.com">naver.com</option>
    		<option value="hotmail.com">hotmail.com</option>
    		<option value="hanmail.com">hanmail.com</option>
    		<option value="yahoo.co.kr">yahoo.co.kr</option>
    		<option value="1">직접입력</option>
			</select>
          </div>
          </div><br>
        
        
        
        <!-- 주소 -->
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">주소*</label>
            <div class="col-sm-2"> 
              <input class="form-control" type="text" name="zipCode" id="sample6_postcode" placeholder="우편번호">
            </div>
            <span class="input-group-btn">
              <input  class="btn btn-success" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
            </span>
            <div class="col-sm-12 col-sm-offset-3">
             <div class="row">
               <div class="col-sm-4">            
                <input class="form-control" name="address1" type="text" id="sample6_address" placeholder="주소">
		       </div>
			   <div class="col-sm-2">
                <input class="form-control" name="address2" type="text" id="sample6_address2" placeholder="상세주소"> 
               </div>
             </div>
            </div>
        </div><br>
       
        <!-- 휴대폰 번호 -->
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
              <div class="col-sm-3">
                <input type="tel" class="form-control" name="phone" id="inputNumber" placeholder="- 없이 입력해 주세요" />
                 </div>
                  <span class="input-group-btn">
                    <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
                  </span>
              </div><br>
       
       <!-- 인증번호 확인 -->
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumberCheck">인증번호 확인</label>
          <div class="col-sm-2">
            
              <input class="form-control" id="inputNumberCheck" type="text" placeholder="인증번호">
             </div>
          <!--     <span class="input-group-btn"> -->
          <div class="col-sm-2" id="btn">
                <button class="btn btn-success" type="button">인증번호 확인<i class="fa fa-edit spaceLeft"></i></button>
              </div>
            <div class="col-sm-3">
            <h11 class="help-block">전송된 인증번호를 입력해주세요.</h11>
            </div>
         
        </div><br>
        
        
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#">이용약관</a> 에 동의 합니다.
            </div>
          </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
    </div>
    </div>
    </div>

<c:import url="/WEB-INF/views/include/footer.jsp" />








 <!-- <div class="col-md-4 hidden-lg hidden-md text-center"> 
            <div class="alert alert-danger alert-dismissable">
              <button contenteditable="false" type="button" class="close" data-dismiss="alert"
              aria-hidden="true">×</button>이미 등록된 아이디 입니다.</div>-->
          
<button id="qmyBtn">Click Here</button>
</body>








<script>
$(function(){ // 다썼는지 체크하기! 빠진 항목없는지..
	$("#join-form").submit(function(){
		if($("#inputName").val()=="" ){
			alert ("이름은 필수 입력 항목입니다.");
			$("#inputName").focus()
			return false;
		}
		
		 /* if($("#email").val()=="" ){
			alert ("이메일은 필수 입력 항목입니다.");
			$("#email").focus()
			return false;
		}
	 	if($("#image-checked").is(":visible")==false ){
			alert ("이메일 중복 체크를 해주세요.");
			return false;
		} */
		if($("input[type='password']").val()=="" ){
			alert ("비밀번호는 필수 입력 항목입니다.");
			$("input[type='password']").focus()
			return false;
		}
	 	/* if($("#agree-prov").is(":checked")==false ){
			alert ("약관동의가 필요합니다.");
			
			return false;
		} */  
		
		 return true;
		
	});
	
	$("#email_select").change( function(){ //@뒤 이메일 자동으로 만들어주는것
		console.log($("#email_select").val());
        if ($("#email_select").val() == '1') {
        	$("#inputEmail2").readonly = false;
        	$("#inputEmail2").value = '';
        	$("#inputEmail2").focus();
        }
        else {
            $("#inputEmail2").readonly = true;
            $("#inputEmail2").val($("#email_select").val());
        }
    });
	
	
	
	/* 비밀번호와 비밀번호 확인 일치성  */
	$("#inputPasswordCheck").keyup(function(){ 
		if($("#inputPassword").val()!=$("#inputPasswordCheck").val()){
			$("#oneMore").html("일치 하지 않습니다.")
		}
		else{
			$("#oneMore").html("일치 합니다.")
		}
	});
	
	
	/* 비밀번호 유효성 검사 (영문,숫자를 혼합하여 6~20자 이내 + 동일문자 x)  */
	$("#inputPassword").keyup(function(){
	 if(CehckPassWord($("#inputPassword").val())==false) {
		 $("#checkPw").html("비밀번호는 특수문자, 영문,숫자를 혼합하여 6~20자리로 입력해주세요.");
	 }
	 else{
		 $("#checkPw").html("사용 가능합니다.");
	 }
	});
	
	
	
	
	

	
	/* id중복체크  */
	$("#checkId").on("click",function(){
		var id = $("#inputId").val();
		console.log(id);
		 $.ajax({// 비동기식 
			url :"checkId",
			type:"POST",
			data:{"id":id},
			dataType:"text",
			success:function(check){
				 console.log(check);
				  if( check=="exists"){
					alert("이미 존재하는 아이디 입니다.");
					$("#inputId").val("").focus();
				//된다는 alert불러오는것 
				}
				  else{
					  alert("사용 가능한 아이디입니다..");
				/*  안되는 alert 불러오는거
				$('#my-alert').bind('closed', function () {
					$("#inputId").val("").focus();
					})
					*/
				} 
			},
			 error:function(jqXHR, status, error){
				 console.error(status+":"+error);
			 }
		}); 
	});

	
	
	function CehckPassWord(str) { //비밀번호 유효성 검사 
		 if(str.length < 6) {
		  return false;
		 } 		 
		 if(!str.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/))  {
		  return false;
		 } 
		
		 return true;
		} 
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* alert 시험  */
	$("#qmyBtn").click(function() {
    $(this).after(
        '<div class="alert alert-success alert-dismissable">'+
            '<button type="button" class="close" ' + 
                    'data-dismiss="alert" aria-hidden="true">' + 
                '&times;' + 
            '</button>' + 
            'Password Changed' + 
         '</div>');
}); 
	
	
	
	
	
	/* 
	
	
	
	 $("#email").change(function(){
		$("#image-checked").hide();
		$("#btn-checkemail").show();
	})
	$("#btn-checkemail").click(function(){
		var email = $("#email").val(); //이메일 값 빼오기
		if(email ==""){
			return;
		}
		$.ajax({
			"url":"/mysite/user?a=checkemail&email=" + email,
			"type":"get",
			"dataType":"json",
			//"data":(#dd).a, // get방식이라서 data는 그냥..아무것도 쓰지않기
			
			"success":function(response){
				if(	response.result=="fail"){
					console.error("error:"+response.message);
					return;
				}
				if(response.data == true){
					alert("이미 존재하는 이메일입니다. 다른이메일을 사용해 주세요");
					$("#email").val("").focus();
					return;
				}
				$("#image-checked").show();
				$("#btn-checkemail").hide();
			},
			"error":function(jsXHR, status, e ){
				console.error("error:"+status+":"+e);
			}
		});
	});  */
	
});
</script>



</html>
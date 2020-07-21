<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		var result = confirm("정말로 탈퇴하시겠습니까?");
		if(result ==  true){
			$("#frm").submit();
		}else{
			history.back();
		}
	});
});
</script>
</head>
<body>
<form id="frm" name="frm" action="companyDelPro.comp" >
	<input type ="password" name ="compPw" />
	<input type="button" value="탈퇴하기" name="btn" id="btn"/>
</form>
</body>
</html>
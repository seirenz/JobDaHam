<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HeadhunterInfo</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#modify").click(function(){
		location.href="memberInfoPw.mem?id=${dto.userId}"
	});
	$("#memDel").click(function(){
		if(confirm("정말 탈퇴?")){
			location.href="memberDel.mem?id=${dto.userId}"
		}
	});
});
</script>
</head>
<body>
이름 : ${list.headName }<br />
아이디 : ${list.headId }<br />
이메일  : ${list.headEmail }<br />
연락처  : ${list.headTel }<br />
등록일 : ${list.headRegist }<br />
주소  : ${list.headAddr }<br />


<input type="button" name="modify" id ="modify" value="수   정" >
<input type="button" name="pwModify" id ="pwModify" value="비밀번호" >
<input type="button" value="취  소" 
				onclick = "javascript:history.back();" />
<input type="button" value="탈퇴" id ="memDel"/>
</body>
</html>
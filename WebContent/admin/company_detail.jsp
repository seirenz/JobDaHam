<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#modify").click(function(){
		location.href="memberPw.mem"
	});
	$("#memDel").click(function(){
		location.href="memberUserDel.mem"
	});
	$("#pwModify").click(function(){
		location.href="memberPwForm.mem"
	});
});
</script>
</head>
<body>
기업번호 : ${companyList.compNum }<br />
기업이름 : ${companyList.compName }<br />
대표자: ${companyList.compName }<br />
사업자등록번호: ${companyList.compName }<br />
기업유형: ${companyList.compName }<br />
주소: ${companyList.compName }<br />
인사담당자: ${companyList.compName }<br />
아이디 : ${companyList.userId }<br />
비번: ${companyList.compName }<br />
전화: ${companyList.compName }<br />
이메일  : ${companyList.userEmail }<br />
생년월일  : ${companyList.userBirth }<br />
등록일 : ${companyList.compName }<br />
마케팅 동의 : ${companyList.compName }<br />
정보이용 동의: ${companyList.compName }<br />
업무위탁 동의: ${companyList.compName }<br />
<input type="button" name="modify" id ="modify" value="수   정" >
<input type="button" name="pwModify" id ="pwModify" value="비밀번호" >
<input type="button" value="취  소" 
				onclick = "javascript:history.back();" />
<input type="button" value="탈퇴" id ="memDel"/>
</body>
</html>
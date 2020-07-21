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
대표자: ${companyList.repregent }<br />
사업자등록번호: ${companyList.bNum }<br />
기업유형: ${companyList.compType }<br />
주소: ${companyList.compAddr }<br />
인사담당자: ${companyList.cmanagerName }<br />
아이디 : ${companyList.userId }<br />
비번: ${companyList.compPw }<br />
전화: ${companyList.compTel }<br />
이메일  : ${companyList.userEmail }<br />
등록일 : ${companyList.compRegist }<br />
마케팅 동의 : ${companyList.marketing }<br />
정보이용 동의: ${companyList.infoAgree }<br />
업무위탁 동의: ${companyList.workRequest }<br />
<input type="button" name="modify" id ="modify" value="수   정" >
<input type="button" name="pwModify" id ="pwModify" value="비밀번호" >
<input type="button" value="취  소" 
				onclick = "javascript:history.back();" />
<input type="button" value="탈퇴" id ="memDel"/>
</body>
</html>
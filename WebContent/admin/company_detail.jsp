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
등록번호 : ${dto.compNum }<br />
기업이름 : ${dto.compName }<br />
대표자: ${dto.repregent }<br />
사업자등록번호: ${dto.bNum }<br />
기업유형: ${dto.compType }<br />
주소: ${dto.compAddr }<br /><br />

인사담당자: ${dto.cmanagerName }<br />
아이디 : ${dto.compId }<br />
비번: ${dto.compPw }<br />
전화: ${dto.compTel }<br />
이메일  : ${dto.compEmail }<br />
등록일시 : ${dto.compRegist }<br /><br />

마케팅 동의 : ${dto.marketing }<br />
정보이용 동의: ${dto.infoAgree }<br />
업무위탁 동의: ${dto.workRequest }<br />
<input type="button" name="modify" id ="modify" value="수   정" >
<input type="button" name="pwModify" id ="pwModify" value="비밀번호" >
<input type="button" value="취  소" 
				onclick = "javascript:history.back();" />
<input type="button" value="탈퇴" id ="memDel"/>
</body>
</html>
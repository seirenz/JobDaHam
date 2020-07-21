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
<script>
$(function(){
	$("#imgSubmit").click(function(){
		if($("#userId").val()== ""){
			$("#idmsg").html("아이디를 입력하세요.");
			$("#userId").focus();
			return false;
		}
		if($("#userPw").val()== ""){
			$("#pwmsg").html("비밀번호 입력하세요.");
			$("#userPw").focus();
			return false;
		}
		$("#frm").submit();
	});
});
</script>
</head>
<body>

<c:if test="${!empty logId }">
<!-- 로그인 된 경우 -->
<a href="head/headDetail.head">내정보</a>
<a href="login/logOutPro.main">로그아웃</a>
<a href="Ann/AnnounceList.Ann">기업 공고 리스트</a>
<a href="Pro/ProposalList.Pro">헤드헌팅신청 리스트</a>
<a href="sr/Search.sr">인재검색</a>
<a href="ans/ansBoardList.ans">답변형 게시판</a>

</c:if>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤드헌터 회원 가입</title>
 <style type='text/css'>
	#memberTab{width:630px; margin: 0 auto;}
  #agree{height: 30px; width: 81%;}

   .pw{width: 250px; height:50px;font-size: large;text-align: left;}
   .pw input#compass{font-size: large;}
   #subtns{width: 100px; height: 30px;}

  
  </style>
 <script src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
  <script language="JavaScript">


    function ps(){
    if (this.frm.compass.type="password")
    box.innerHTML="<input id='headPw' name='headPw' placeholder='비밀번호*' style='width:175px; height:50px;' type='html' name='headPw' size='20' value="+this.frm.headPw.value+">";
    click.innerHTML="<a href='javascript:txt()''><input type='button' value='숨기기' ></a>"}
    function txt(){
    if (this.frm.compass.type="text")
    box.innerHTML="<input id='headPw' name='headPw' placeholder='비밀번호*' style='width:190px; height:50px;' type='password' name='headPw' size='20' value="+this.frm.headPw.value+">";
    click.innerHTML="<a href='javascript:ps()'><input type='button' value='보기'></a>"}
   
  
    $( document ).ready( function() {
        $( '.check-all' ).click( function() {
          $( '.ab' ).prop( 'checked', this.checked );
        } );
      } );

      $(function(){
  		$("#frm").submit(function(){
  			
  			if($("#userIdChk").val() == 1){
  				alert("중복체크를 해주세요");
  				return false;
  			}			
  		});
  		

  		$("#idChk").click(function(){
  			if($("#headId").val() == ""){
  				alert("아이디를 입력해주세요.");
  				$("#headId").focus();
  				return false;
  			}
  			open("headIdConfirm.head?headId="+$("#headId").val(),"아이디 확인",
  			"width=300,height=200,lef=200,top=300");
  		});
  	});
    
   
  </script>

</head>
<body>


 <form method='post' action='HeadMemJoin.head' name ='frm' >
 <input type = "hidden" name = "num" value ="1" id ="headIdChk" />
	<div id='memberTab' >
	 <div style="margin:20px;">
	 <table border='1'  width = '600px' align = 'center' >
     <tr>
     <td style=" width:200px; height:50px;font-size: large;text-align: center;"><a href="jobSeekerRegist.head"  >개인회원</a></td> 
     <td style=" width:200px; height:50px;font-size: large;text-align: center;"><a href="companyRegist.comp" >기업회원</a></td>
     <td style=" width:200px; height:50px;font-size: large;text-align: center;"><a href="headHunterRegist.head" >헤드헌터회원</a></td>
     </tr>
   </table>
	</div>
	
 <fieldset>
  <legend style="font-size: x-large;">헤드헌터 회원 가입</legend>
  
  
  <table border = '1' width = '595px' align = 'center'>
  <p><caption style="text-align: left; font-size: x-large;"> <b>기업기본정보</b></caption></p>
  <p><caption style="text-align: right; font-size: small;"> <b>*는 필수사항입니다</b></caption></p>

 
<tbody>

  <tr>
    <td ><input type='text' name='headName' id = 'headName' class = 'headName' maxlength ='20'  style=" width:370px; height:50px;font-size: large;text-align: left;"  placeholder="기업명*" required></td>
     <td><input type="text" name='headOwner' id = 'headOwner' class = 'headOwner' maxlength ='20'  style=" width:215px; height:50px;font-size: large;text-align: left;"  placeholder="대표자*" required></td>
  </tr>
  
  <tr>
    <td colspan="2"><input placeholder="사업자번호*" type='number'  maxlength ='20'  style=" width:600px; height:50px;font-size: large;text-align: left;" name='bNum' id = 'bNum' ></td>
  </tr>
 
  <tr>
    <td colspan="2"> <select name='headType'  style=" width:607px; height:50px;font-size: large;text-align: left;">
        
      <option selected >기업구분선택</option>
        
        <optgroup label='서치펌'>
            <option>서치펌</option>
         
           
          </optgroup>
         </select>
		</td>
   
  </tr>
  <tr>
    <td colspan="2"><input placeholder="회사 주소*" type='text' name='headAddr' id = 'headAddr' style=" width:600px; height:50px;font-size: large;text-align: left;" ></td>
  </tr>
  
</tbody>

</table>

<table border = '1' width = '595px' align = 'center'>
  <p ><caption style="padding-bottom: 20px; text-align: left; font-size: x-large;"> <b>헤드헌터 정보</b></caption></p>
 
  <tbody>
 
  <tr>
    <td colspan="2"><input placeholder="가입자명*" type='text' maxlength ='20'  style=" width:600px; height:50px;font-size: large;text-align: left;" name='hmanagerName' id = 'hmanagerName' ></td>
  </tr>
  
  <tr>
    <td ><input type='text' name='headId' id = 'headId' class = 'headId' maxlength ='20'  style=" width:343px; height:50px;font-size: large;text-align: left;"  placeholder="아이디*" required><button id="idChk" style="width:70px; height:50px;font-size: small;">중복확인</button></td>
     <td class= "pw"><span id=box><input type="password" name='headPw' id = 'compass' class = 'headPw' maxlength ='20'  placeholder="비밀번호*" style="width:190px; height:50px;" required></span>
      <span id=click><a href="javascript:ps()"><input type="button" value="보기"></a></span>
        </td>
  </tr>

  <tr>
    <td  colspan="2"><input  placeholder= '전화번호*' type='tel' name='headTel' id = 'headTel' maxlength = '20'style=" width:600px; height:50px;font-size: large;text-align: left;"></td>
  </tr>

  <tr>
    <td colspan="2"><input placeholder= '이메일*' type='email' name='headEmail' id = 'headEmail' style=" width:600px; height:50px;font-size: large;text-align: left;"></td>
  </tr>

</tbody>


</table>
<p>업무에 바로 활용가능한 정보와 이벤트 메일 수신에 동의합니다. <input type="checkbox" value="agree" name ="marketing"></p> 

<p>필수항목 및 개인정보 수집 및 이용 동의(선택),<br>업무위탁동의(선택)에 모두 동의합니다. <input type="checkbox" name="all" class="check-all" style="margin-left: 213px ;"> </p>
<hr>
<table  width = '595px' align = 'center'>
  <tbody>
  <tr><td id="agree"><span style="color: red;">[필수] 이용약관 동의</span></td><td><input type="checkbox"  class="ab" required></td></tr>
  <tr><td id="agree"><span style="color: red;">[필수] 개인정보 수집 및 이용 동의</td><td><input type="checkbox" class="ab" required></td></tr>
  <tr><td id="agree"><span style="color: gray;">[선택] 개인정보 수집 및 이용 동의</span></td><td><input type="checkbox" name="infoAgree" class="ab" value = "agree"></td></tr>
  <tr><td id="agree"><span style="color: gray;">[선택] 업무위탁</span></td><td><input type="checkbox" name="workRequest" class="ab" value ="agree"></td></tr>
</tbody>
<tfoot>
  <tr>
    <th colspan="2"><input id='subtns'type='submit' value='가입완료'/> <input id='subtns' type='reset' value = '다시입력'/> <input id='subtns' type='button' value = '가입안함' /></th>

  </tr>
</tfoot>
</table>

 </form>
 </fieldset>
 
</div>
 



</body>
</html>